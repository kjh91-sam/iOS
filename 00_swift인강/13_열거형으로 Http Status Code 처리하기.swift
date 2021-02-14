import Foundation

// 여기에서 열거형을 선언해 주세요.
enum HttpStatusCode: Int {
    case ok = 200
    case badRequest = 400
    case unauthorized = 401
    case notFound = 404
    case internalServerError = 500
    case badGateway = 502
}

func solution(_ statusCode:Int) -> String {
   // 여기에서 인스턴스를 생성하고 메시지를 리턴해 주세요.
    if let code = HttpStatusCode(rawValue: statusCode) {
        switch code {
        case .ok:
            return "OK"
        case .badRequest:
            return "Bad Request"
        case .unauthorized:
            return "Unauthorized"
        case .notFound:
            return "Not Found"
        case .internalServerError:
            return "Internal Server Error"
        case .badGateway:
            return "Bad Gateway"
        }
    } else {
        return "Unsupported Code"
    }
}

import Foundation

// // 여기에서 열거형을 선언해 주세요.
// enum HttpStatusCode : String {
//     case ok = "OK"
//     case badRequest = "Bad Request"
//     case unauthorized = "Unauthorized"
//     case notFound = "Not Found"
//     case internalServerError = "Internal Server Error"
//     case badGateway = "Bad Gateway"
// }

// func solution(_ statusCode:Int) -> String {
//    // 여기에서 인스턴스를 생성하고 메시지를 리턴해 주세요.
//     switch statusCode {
//     case 200:
//         return HttpStatusCode.ok.rawValue
//     case 400:
//         return HttpStatusCode.badRequest.rawValue
//     case 401:
//         return HttpStatusCode.unauthorized.rawValue
//     case 404:
//         return HttpStatusCode.notFound.rawValue
//     case 500:
//         return HttpStatusCode.internalServerError.rawValue
//     case 502:
//         return HttpStatusCode.badGateway.rawValue
//     default:
//         return "Unsupported Code"

//     }
// }
