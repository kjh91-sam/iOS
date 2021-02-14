import Foundation

extension Int {
static func +(a: Int, b: Double) -> Double {
    return Double(a) + b
}
    static func +(a: Double, b: Int) -> Double {
return a + Double(b)}
}

let a = 1
let b = 2.3

var validCount = 0

if a + b == 3.3 {
   validCount += 1
}

if b + a == 3.3 {
   validCount += 1
}

print(validCount)
