import Foundation

let list: [Int?] = [0, nil, nil, 3, nil, 5, 9]
var sum = 0

for case let num? in list {
    sum += num
}

print(sum)
