//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct BitCounter {
    
    /// Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.
    
    /// Example:
    /// The binary representation of 1234 is 10011010010, so the function should return 5 in this case
    ///
    /// Source: https://www.codewars.com/kata/526571aae218b8ee490006f4/train/swift
    
    func countBits(_ n: UInt) -> Int {
        var value = n
        var count = 0
        
        while value != 0 {
            value &= (value - 1)
            count += 1
        }
        
        return count
    }
}
