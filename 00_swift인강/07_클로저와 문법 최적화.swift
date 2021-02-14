import Foundation

let list = ["Apple", "Google", "Samsung", "Microsoft"]

// where 파라미터로 인라인 클로저를 전달해 주세요. 문법 최적화를 적용하지 않은 전체 문법으로 작성해 주세요.
let a = list.contains(where: {(name: String) -> Bool in
        return name.hasPrefix("A")
        }) // (1)

// 여기에서 contains(where:)를 호출하고 문법 최적화를 적용해 주세요.
let b =  list.contains {
    $0.hasPrefix("A")
}// (2)

print(a && b)
