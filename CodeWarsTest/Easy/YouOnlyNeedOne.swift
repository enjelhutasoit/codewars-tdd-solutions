//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct YouOnlyNeedOne {
    func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
        if a.contains(x) { return true }
        return false
    }
}
