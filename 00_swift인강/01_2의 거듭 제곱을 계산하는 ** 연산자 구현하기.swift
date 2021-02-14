import Foundation

infix operator **: MultiplicationPrecedence

extension Int {
static func **(left: Int, right: Int) -> Int{
    var ret = 1
    for _ in 1...right {
        ret *= left
    }
    return ret
}}

var validCount = 0

if 2 ** 3 == 8 {
   validCount += 1
}

if 2 ** 10 == 1024 {
   validCount += 1
}

print(validCount)
