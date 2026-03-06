//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct CenturyCalculator {
    /// Problem: Century From Year
    ///
    /// The first century spans from the year 1 up to and including the year 100,
    /// the second century from the year 101 up to and including the year 200, etc. :contentReference[oaicite:0]{index=0}
    ///
    /// Task:
    /// Given a year, return the century it belongs to. :contentReference[oaicite:1]{index=1}
    ///
    /// Examples:
    /// 1705 → 18
    /// 1900 → 19
    /// 1601 → 17
    /// 2000 → 20
    ///
    /// Source:
    /// https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097
    
    func century(_ year: Int) -> Int {
        (year + 99) / 100
    }
}
