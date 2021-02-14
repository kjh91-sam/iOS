import Foundation

func solution(_ source:String, _ index:Int) -> String {
    return source[index]
}

extension String {
    subscript(index: Int) -> String {
        let targetIndex = self.index(startIndex, offsetBy: index)

        return String(self[targetIndex])
    }
}
