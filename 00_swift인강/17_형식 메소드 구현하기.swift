import Foundation

// 여기에서 새로운 자료형을 선언하고 형식 메소드를 구현해 주세요.
class StringConverter {
    class func string(from num:Int) -> String {
        return String(num)
    }
    class func integer(from str:String) -> Int? {
        return Int(str)
    }
}

// 아래에 있는 코드는 수정하지 마세요.
let a = 123
let b = "456"

let str = StringConverter.string(from: a)
if let num = StringConverter.integer(from: b) {
   print(str == "123" && num == 456)
} else {
   print(false)
}
