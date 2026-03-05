//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class YouOnlyNeedOneTests: XCTestCase {
    
    var sut: YouOnlyNeedOne!
    
    override func setUp() {
        super.setUp()
        sut = YouOnlyNeedOne()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_givenIntArray_expectedContainsValue() {
        let cases = [
            ([66, 101], 66, true),
            ([80, 117, 115, 104, 45, 85, 112, 115], 45, true),
            ([1, 2, 3], 4, false),
            ([], 1, false),
            ([1], 1, true)
        ]
        
        for (index, (array, target, expected)) in cases.enumerated() {
            XCTAssertEqual(sut.check(array, target), expected, "Error at index: \(index), array: \(array), target: \(target)")
        }
    }
    
    func test_givenStringArray_expectedContainsValue() {
        let cases = [
            (["t", "e", "s", "t"], "e" , true),
            (["what", "a", "great", "kata"], "kat", false),
            (["n", "o", "n", "e"], "t", false),
            ([], "x", false),
            (["x"], "x", true)
        ]
        
        for (index, (array, target, expected)) in cases.enumerated() {
            XCTAssertEqual(sut.check(array, target), expected, "Error at index: \(index), array: \(array), target: \(target)")
        }
    }
}
