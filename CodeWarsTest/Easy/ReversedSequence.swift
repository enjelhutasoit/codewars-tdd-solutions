//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct ReversedSequence {
    /// Problem: Reversed Sequence
    ///
    /// Build a function that returns an array of integers from n to 1 where n>0.
    ///
    /// Example : n=5 --> [5,4,3,2,1]
    ///
    /// Source: https://www.codewars.com/kata/5a00e05cc374cb34d100000d/train/swift

    func reverseSeq(n: Int) -> [Int] {
        guard n > 0 else { return [] }
        return Array(1...n).reversed()
    }
}
