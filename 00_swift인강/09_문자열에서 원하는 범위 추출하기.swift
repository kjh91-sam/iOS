import Foundation

let str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

let toFind = "nisi ut aliquip"
var startIndex: String.Index = str.startIndex
if let range = str.range(of: toFind) {
    startIndex = range.lowerBound
}
let endIndex = str.index(startIndex, offsetBy: toFind.count - 1)
let result = str[startIndex...endIndex]
print(result == "nisi ut aliquip")
