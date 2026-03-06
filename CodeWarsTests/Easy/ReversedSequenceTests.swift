//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class ReversedSequenceTests: XCTestCase {
    
    private var sut: ReversedSequence!
    
    override func setUp() {
        super.setUp()
        sut = ReversedSequence()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_reverseSeq_whenNegative_returnsEmptyArray() {
        XCTAssertEqual(sut.reverseSeq(n: -10), [])
    }
    
    func test_reverseSeq_whenZero_returnsEmptyArray() {
        XCTAssertEqual(sut.reverseSeq(n: 0), [])
    }
    
    func test_reverseSeq_whenONe_returnsSingleElement() {
        XCTAssertEqual(sut.reverseSeq(n: 1), [1])
    }
    
    func test_reverseSeq_whenTwo_returnsCorrectSequence() {
        XCTAssertEqual(sut.reverseSeq(n: 2), [2, 1])
    }
    
    func test_reverseSeq_whenFive_returnsCorrectSequence() {
        XCTAssertEqual(sut.reverseSeq(n: 5), [5, 4, 3, 2, 1])
    }
    
    func test_reverseSeq_whenLargeInput_returnsCorrectCountAndBounds() {
        let n = 10_000
        let result = sut.reverseSeq(n: n)
        
        XCTAssertEqual(result.count, n)
        XCTAssertEqual(result.first, n)
        XCTAssertEqual(result.last, 1)
    }
}
