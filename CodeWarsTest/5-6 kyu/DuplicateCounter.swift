//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct DuplicateCounter {
    /// Problem: Counting Duplicates
    ///
    /// Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string.
    ///
    /// The input string can be assumed to contain only alphanumeric characters (letters and digits).
    ///
    /// Examples:
    /// "abcde" -> 0
    /// "aabbcde" -> 2
    /// "aabBcde" -> 2
    /// "indivisibility" -> 1
    /// "aa11" -> 2
    ///
    /// Source:
    /// https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1
    
    func countDuplicates(_ s: String) -> Int {
        var frequency: [Character: Int] = [:]
        
        for char in s.lowercased() {
            frequency[char, default: 0] += 1
        }
        return frequency.values.filter { $0 > 1 }.count
    }
}
