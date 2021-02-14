import Foundation

let a: Int? = nil
let b: Double? = 12.3
let c: String? = "Hello"

let ra: Int = a ?? 0
let rb: Double = b ?? 0.0
let rc: String = c ?? "no value"

print(ra, rb, rc)
