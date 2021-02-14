//문자열에서 i를 모두 삭제하고 소문자 o는 대문자 O로 바꿔 주세요.


import Foundation

let str = "Lorem ipsum dolor sit amet"

let result = str.replacingOccurrences(of: "i", with: "").replacingOccurrences(of: "o", with: "O")
print(result == "LOrem psum dOlOr st amet")
