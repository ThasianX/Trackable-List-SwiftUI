// Kevin Li - 9:22 PM - 6/2/20

import Foundation

extension DateComponents: Strideable {

    public func distance(to other: DateComponents) -> Int {
        return Calendar.current.dateComponents([.day], from: other.date, to: date).day ?? 0
    }

    public func advanced(by n: Int) -> DateComponents {
        return Calendar.current.date(byAdding: .day, value: n, to: date)?.dateComponents ?? self
    }

}
