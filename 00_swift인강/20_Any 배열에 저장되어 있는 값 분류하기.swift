import Foundation

let list: [Any] = [1, "2", 3.5, "Hello", -123]

var intList = [Int]()
var doubleList = [Double]()
var strList = [String]()

// 여기에서 구현해 주세요.

for item in list {
    if let intNum = item as? Int {
        intList.append(intNum)
    } else if let doubleNum = item as? Double {
        doubleList.append(doubleNum)
    } else if let str = item as? String {
        strList.append(str)
    } else {
        continue
    }
}


print(intList.count, doubleList.count, strList.count)
