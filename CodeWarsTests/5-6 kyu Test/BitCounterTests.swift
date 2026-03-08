//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class BitCounterTests: XCTestCase {
    
    private var sut: BitCounter!
    
    override func setUp() {
        super.setUp()
        sut = BitCounter()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
        
    // MARK: - Zero Case
    
    func test_countBits_zeroInput_returnsZero() {
        XCTAssertEqual(sut.countBits(0), 0)
    }
    
    // MARK: - Single Bit Cases
    
    func test_countBits_singleBitNumbers_returnsOne() {
        XCTAssertEqual(sut.countBits(1), 1)
        XCTAssertEqual(sut.countBits(2), 1)
        XCTAssertEqual(sut.countBits(4), 1)
        XCTAssertEqual(sut.countBits(8), 1)
    }
    
    // MARK: - Small Numbers
    
    func test_countBits_smallNumbers_returnsCorrectBitCount() {
        XCTAssertEqual(sut.countBits(3), 2)
        XCTAssertEqual(sut.countBits(5), 2)
        XCTAssertEqual(sut.countBits(7), 3)
        XCTAssertEqual(sut.countBits(9), 2)
    }
    
    func test_countBits_problemExample_returnsFive() {
        XCTAssertEqual(sut.countBits(1234), 5)
    }
    
    // MARK: - Edge Cases
    
    func test_countBits_maxUInt_returnsCorrectBitCount() {
        let expected = UInt.max.nonzeroBitCount
        XCTAssertEqual(sut.countBits(UInt.max), expected)
    }
    
    func test_countBits_powerOfTwoBoundaries_returnsOne() {
        for i in 0..<UInt.bitWidth {
            let value = UInt(1) << i
            XCTAssertEqual(sut.countBits(value), 1)
        }
    }
    
    // MARK: - Randomized Property Tests
    
    func test_countBits_randomValues_returnsSameAsNativeBitCount() {
        for _ in 0..<10_000 {
            let value = UInt.random(in: 0...UInt.max)
            XCTAssertEqual(
                sut.countBits(value),
                value.nonzeroBitCount
            )
        }
    }
    
    // MARK: - Performance

    func test_countBits_performance_returnsWithinAcceptableTime() {
        measure {
            for i in 0..<1_000_000 {
                _ = sut.countBits(UInt(i))
            }
        }
    }
}
