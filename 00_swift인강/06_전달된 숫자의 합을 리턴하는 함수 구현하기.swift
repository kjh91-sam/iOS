import Foundation

var count = 0
// 여기에서 함수를 구현해 주세요.
func sum(at count: inout Int, _ nums: Int...) -> Int{
    count = nums.count
    var result = 0
    for num in nums {
        result += num
    }
    return result
}


// 여기에서 구현한 함수를 호출하고 결과를 저장해 주세요.
let result = sum(at: &count, 1,2,3,4,5)

print(count, result)
