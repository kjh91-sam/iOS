import Foundation

class Figure {
   let width: Double
   let height: Double
   
   init(width: Double, height: Double) {
      self.width = width
      self.height = height
   }
   
   func area() -> Double {
      return width * height
   }
}

class Rectangle: Figure {
   var isSquare: Bool {
      return width == height
   }
}

class Circle: Figure {
   var radius: Double = 0.0
   
   override func area() -> Double {
      return Double.pi * radius * radius
   }
   
    // 여기에서 새로운 생성자를 구현해 주세요.
    init?(radius: Double) {
        super.init(width: radius * 2, height: radius * 2)
        self.radius = radius
    }
   
}

class Triangle: Figure {
   override func area() -> Double {
      return super.area() / 2
   }
}

// 여기에서 Square 클래스를 선언해 주세요.
class Square: Rectangle {
    init(side: Double) {
        super.init(width: side, height: side)
    }
    convenience init(from area: Double) {
        self.init(side: area.squareRoot())
    }
}

// 아래에 있는 코드는 수정하지 마세요.
var validCount = 0

if let _ = Circle(radius: 30) {
   validCount += 1
}

var s = Square(from: 100)
if s.width == 10 && s.height == 10 {
   validCount += 1
}

s = Square(side: 7)
if s.area() == 49 {
   validCount += 1
}

if s.isSquare {
   validCount += 1
}

print(validCount == 4)
