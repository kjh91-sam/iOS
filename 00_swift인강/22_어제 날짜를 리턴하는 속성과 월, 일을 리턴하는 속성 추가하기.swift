import Foundation

// 여기에서 구현
extension Date {
    var yesterday: Date {
        return self.addingTimeInterval( -60 * 60 * 24)
    }
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
}

func solution(_ year:Int, _ month:Int, _ day:Int) -> [Int] {
    let calendar = Calendar.current
    var comps = DateComponents()
    comps.year = year
    comps.month = month
    comps.day = day

    let date = calendar.date(from: comps)!
    
    let m = date.yesterday.month
    let d = date.yesterday.day
    
    return [m, d]
}
