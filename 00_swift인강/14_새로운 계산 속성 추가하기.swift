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
   
   // 여기에 계산 속성을 추가해 주세요.
    var complementary: Color {
        let color: Color = Color(
            red:255 - self.red, 
            green: 255 - self.green, 
            blue: 255 - self.blue
        )
        return color
    }
}

let color = Color(red: 95, green: 199, blue: 205)
let complementaryColor = color.complementary

print(complementaryColor.red, complementaryColor.green, complementaryColor.blue)
