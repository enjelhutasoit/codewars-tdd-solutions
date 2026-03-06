//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class ClockTests: XCTestCase {
    
    private var sut: Clock!
    
    override func setUp() {
        super.setUp()
        sut = Clock()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_past_whenTimeIsZero_returnsZeroMilliseconds() {
        XCTAssertEqual(sut.past(0, 0, 0), 0)
    }
    
    func test_past_whenTimeIsOneMinuteOneSecond_returns61000Milliseconds() {
        XCTAssertEqual(sut.past(0, 1, 1), 61000)
    }
    
    func test_past_whenTimeIsOneHourOneMinuteOneSecond_returns61000Milliseconds() {
        XCTAssertEqual(sut.past(1, 1, 1), 3661000)
    }
    
    func test_past_whenTimeIsOneHourOneSecond_returns61000Milliseconds() {
        XCTAssertEqual(sut.past(1, 0, 1), 3601000)
    }
    
    func test_past_whenTimeIsOneHour_returns3600000Milliseconds() {
        XCTAssertEqual(sut.past(1, 0, 0), 3600000)
    }
}
