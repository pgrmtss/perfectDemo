import Foundation
import PerfectHTTP

func testHandler(request: HTTPRequest, response: HTTPResponse) {

    let db = DataBaseManager()

    let rs = db.selectAllDataBaseSQLwhere(tableName: "user", keyValue: "id = 1")
    let mysqlResult = rs.mysqlResult!
    print(mysqlResult)
    var ary = [[String:Any]]()
 
    // mysqlResult.forEachRow { row in
    //     let optionId = getRowString(forRow: row[0])
    //     let optionName = getRowString(forRow: row[1])
    //     let optionPhone = getRowString(forRow: row[2])

    //     ary.append("\(optionName)":optionValue]) //store our options
    // }
    // print(ary)
    
    let json:[String:Any] = ["code":1,
                "msg":"请求成功",
                "data":"这是测试用的data"]
    do {
       try response.setBody(json: json) 
    } catch {
        print("set responseBody error")
    }
    response.completed()
}
