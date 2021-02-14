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

// 여기에서 Rectangle 클래스를 선언해 주세요.
class Rectangle: Figure {
    var isSquare: Bool {
        if width == height {
            return true
        } else {
            return false
        }
    }
}

// 여기에서 Circle 클래스를 선언해 주세요.
class Circle: Figure {
    var radius = 0.0
    
    override func area() -> Double {
        return Double.pi * radius * radius
    }
}

// 여기에서 Triangle 클래스를 선언해 주세요.
class Triangle: Figure {
    override func area() -> Double {
        return super.area() * 0.5
    }
}


// 아래에 있는 코드는 수정하지 마세요.
var validCount = 0

let r = Rectangle(width: 100, height: 200)
if r.area() == 20000 {
   validCount += 1
}

if !r.isSquare {
   validCount += 1
}

let c = Circle(width: 100, height: 200)
c.radius = 60
if Int(c.area()) == 11309 {
   validCount += 1
}

let t = Triangle(width: 100, height: 200)
if t.area() == 10000 {
   validCount += 1
}


print(validCount == 4)
