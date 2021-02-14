import Foundation

// 오류 처리에 사용할 수 있도록 형식을 구현해 주세요.
enum LoginError: Error {
   case invalidId
   case invalidPassword
}

// 오류를 던지는 함수로 수정해 주세요.
func login(id: String, password: String) throws {
   guard id == "admin" else {
      throw LoginError.invalidId
   }
   
   guard password == "1234" else {
      throw LoginError.invalidPassword
   }
}

// 여기에서 login(id:password:)를 호출하고 오류를 처리해 주세요.
func run() {
    do {
        try login(id: "hacker", password: "1234")
    } catch LoginError.invalidId{
        print("Invalid ID")
    } catch {
        print(error)
    }
}

run()
