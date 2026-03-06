//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct BoolToWord {
    /// Problem: Convert boolean values to strings 'Yes' or 'No'.
    ///
    /// Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.
    /// Source:
    /// https://www.codewars.com/kata/53369039d7ab3ac506000467/train/swift

    func boolToWord(_ bool: Bool) -> String {
        bool == true ? "Yes" : "No"
    }
}
