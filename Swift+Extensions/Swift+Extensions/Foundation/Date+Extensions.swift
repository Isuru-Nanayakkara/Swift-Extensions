import Foundation

extension Date {
    
    var isToday: Bool {
        let calendar = Calendar.autoupdatingCurrent
        let selfComponents = calendar.dateComponents([.year, .month, .day], from: self)
        let otherDateComponents = calendar.dateComponents([.year, .month, .day], from: Date())
        return selfComponents.year == otherDateComponents.year && selfComponents.month == otherDateComponents.month && selfComponents.day == otherDateComponents.day
    }
    
    var isYesterday: Bool {
        let calendar = Calendar.autoupdatingCurrent
        let yesterday = calendar.date(byAdding: .day, value: 1, to: Date()) ?? self
        return yesterday.isToday
    }
    
}
