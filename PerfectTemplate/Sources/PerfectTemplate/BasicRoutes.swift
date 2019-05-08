import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

// 路由
class BasicRoutes {
    
    var routes: [Route] {
        return [
            Route(method: .get, uri: "/Api/testApi", handler: testHandler) 
        ]
    }
}