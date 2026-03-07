//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct MultiplesOf3Or5 {
    /// Problem: Multiples of 3 or 5
    ///
    /// If we list all the natural numbers below 10 that are multiples
    /// of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    ///
    /// Task:
    /// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
    ///
    /// Additionally, if the number is negative, return 0.
    ///
    /// Example:
    /// solution(10) -> 23
    ///
    /// Source:
    /// https://www.codewars.com/kata/514b92a657cdc65150000006
    
    func solution(_ num: Int) -> Int {
        guard num > 0 else { return 0 }
        var sum = 0
        for i in 1..<num {
            if i % 3 == 0 || i % 5 == 0 {
                sum += i
            }
        }
        return sum
    }
}
