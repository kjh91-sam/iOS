import Foundation

struct Area {
   var x: Int
   var y: Int
   var width: Int
   var height: Int
   
   // 여기에서 인스턴스 메소드를 추가해 주세요.
    mutating func extend(by num:Int) -> Area {
        return Area(x: x, y: y, width: width * num, height: height * num)
    }
    
    mutating func reset () {
        x = 0
        y = 0
        width = 0
        height = 0
    }
}

// 아래 코드는 let 또는 var 키워드만 수정할 수 있습니다.
var a = Area(x: 0, y: 0, width: 100, height: 100)
let b = a.extend(by: 3)
a.reset() 

// 아래 코드는 수정하지 마세요.
let isExtended = b.width == 300 && b.height == 300
let isZeroArea = a.x == 0 && a.y == 0 && a.width == 0 && a.height == 0

print(isExtended && isZeroArea)
