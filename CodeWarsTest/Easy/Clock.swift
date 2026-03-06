//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct Clock {
    /// Problem: Beginner Series #2 Clock
    ///
    /// Clock shows h hours, m minutes and s seconds after midnight.
    /// Your task is to write a function which returns the time since midnight in milliseconds.
    ///
    /// Example:
    /// h = 0, m = 1, s = 1 → 61000
    ///
    /// Source:
    /// https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a

    func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
        ((h * 3600) + (m * 60) + s) * 1000
    }
}
