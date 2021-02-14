import Foundation

let a = "cafè"
let b = "Cafe"

let result = a.compare(b, options: [.caseInsensitive, .diacriticInsensitive]) == .orderedSame

print(result)
