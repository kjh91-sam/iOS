import Foundation

// 여기에서 함수를 구현해 주세요.
func convertToTuple(name:String,age:Int,address:String) -> (name:String, age:Int, address:String) {
    return (name:name,age:age,address:address)
}

let name = "John doe"
let age = 34
let address = "Seoul"

let t = convertToTuple(name: name, age: age, address: address)

// 여기에서 튜플에 저장된 이름, 나이, 주소를 순서대로 출력해 주세요.
print(t.name, t.age, t.address)
