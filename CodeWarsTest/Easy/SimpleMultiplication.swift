//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//


struct SimpleMultiplication {
    func simpleMultiplication(_ num: Int) -> Int {
        num * (num.isMultiple(of: 2) ? 8 : 9)
    }
}
