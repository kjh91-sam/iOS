import Foundation

// 여기에서 제네릭 함수를 구현해 주세요.
func equal<T: Equatable>(lhs: T, rhs: T) -> Bool {
    return lhs == rhs
}

// Color 값을 비교할 수 있도록 구현해 주세요.
struct Color: Equatable {
   let r: Double
   let g: Double
   let b: Double   
    
    static func ==(lhs: Color, rhs: Color) -> Bool {
        return lhs.r == rhs.r && lhs.g == rhs.g && lhs.b == rhs.b
    }
}

let a = equal(lhs: 1, rhs: 1)
let b = equal(lhs: 12.34, rhs: 12.34)
let c = equal(lhs: "Hello", rhs: "Hello")
let d = equal(lhs: Color(r: 0, g: 0, b: 0), rhs: Color(r: 0, g: 0, b: 0))

print(a && b && c && d)
