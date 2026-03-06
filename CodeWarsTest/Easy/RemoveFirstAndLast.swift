//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

struct RemoveFirstAndLast {
    /// Problem: Remove First and Last Character
    ///
    /// Your goal is to write a function that removes the first and last characters of a string. You're given one parameter, the original string.

    /// Important: Your function should handle strings of any length ≥ 2 characters. For strings with exactly 2 characters, return an empty string.
    ///
    /// Examples
    ///
    /// 'eloquent' --> 'loquen'
    /// 'country'  --> 'ountr'
    /// 'person'   --> 'erso'
    /// 'ab'       --> '' (empty string)
    /// 'xyz'      --> 'y'
    ///
    /// Requirements
    ///
    /// The input string will always have at least 2 characters
    /// For strings with exactly 2 characters, return an empty string
    /// For strings with 3 or more characters, remove the first and st character
    /// The function should handle strings containing letters, /// mbers, and special characters
    /// Test Cases
    ///
    /// Your solution will be tested against:
    ///
    /// Basic functionality with common words
    /// Edge cases with 2-character and 3-character strings
    /// Strings containing numbers and special characters
    /// Random test cases of varying lengths
    ///
    /// Source:
    /// https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0/swift

    func removeFirstAndLast(_ str: String) -> String {
        guard str.count >= 2 else { return "" }
        return String(str.dropLast().dropFirst())
    }
}
