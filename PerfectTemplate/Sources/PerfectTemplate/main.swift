// 导入所需要的库
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

import Foundation

let root = "./webroot"

// 配置服务器端口、根目录等
let server = HTTPServer()
server.serverPort = 8181
server.documentRoot = root

// 配置路由，BasicRoutes在RoutesManager.swift的代码里，往下看,go go go
let basic = BasicRoutes()
print(basic.routes)
server.addRoutes(Routes(basic.routes))

let db = DataBaseManager()    
db.createTable(tableName:"user")

do {
    try server.start() // 开启服务器
} catch PerfectError.networkError(let err, let msg) {
    print("Netword error thrown: \(err) \(msg)")
}

