import Foundation

class Color {
   let red: Int
   let green: Int
   let blue: Int
   
   init(red: Int, green: Int, blue: Int) {
      self.red = red
      self.green = green
      self.blue = blue
   }
   
   // 여기에서 형식 속성을 추가해 주세요.
    static var white = Color(red: 255, green: 255, blue: 255)
    static var black = Color(red: 0, green: 0, blue: 0)
}


let white = Color.white
let black = Color.black

print(white.red == 255 && white.green == 255 && white.blue == 255 && black.red == 0 && black.green == 0 && black.blue == 0)
