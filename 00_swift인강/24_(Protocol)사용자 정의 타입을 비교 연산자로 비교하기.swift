import Foundation

struct Color: Equatable {
   let red: Int
   let green: Int
   let blue: Int
   
   static var black: Color {
      return Color(red: 0, green: 0, blue: 0)
   }
   
   static var white: Color {
      return Color(red: 255, green: 255, blue: 255)
   }
    
    static func == (lhs: Color, rhs: Color) -> Bool {
        return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue
    }
    
    static func != (lhs: Color, rhs: Color) -> Bool {
        return !(lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue)
    }
}

// 아래에 있는 코드는 수정하지 마세요.
let b = Color.black
let w = Color.white

print(b == w)
