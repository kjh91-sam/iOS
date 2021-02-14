import Foundation

var a: Set = [16, 8, 3, 13, 4, 2, 7, 14, 4, 17, 6, 7, 4, 26, 3, 19, 2, 15, 19, 25]
var b: Set = [11, 9, 20, 22, 30, 6, 14, 20, 20, 19, 7, 12, 2, 12, 19, 4, 13, 11, 24, 20]

// 여기에 합집합을 저장해 주세요.
let unionSet = a.union(b)

// 여기에 교집합을 저장해 주세요.
let intersectionSet = a.intersection(b)

// 여기에 차집합을 저장해 주세요.
let subtractingSet = a.subtracting(b)

print(unionSet.count, intersectionSet.count, subtractingSet.count)
