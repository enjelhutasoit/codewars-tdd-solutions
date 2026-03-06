//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class CenturyCalculatorTests: XCTestCase {
    
    private var sut: CenturyCalculator!
    
    override func setUp() {
        super.setUp()
        sut = CenturyCalculator()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_century_whenYearIs1705_return18() {
        XCTAssertEqual(sut.century(1705), 18)
    }
    
    func test_century_whenYearIs1900_return19() {
        XCTAssertEqual(sut.century(1900), 19)
    }
    
    func test_century_whenYearIs1601_return17() {
        XCTAssertEqual(sut.century(1601), 17)
    }
    
    func test_century_whenYearIs2000_return20() {
        XCTAssertEqual(sut.century(2000), 20)
    }
    
    func test_century_whenYearIs2742_return28() {
        XCTAssertEqual(sut.century(2742), 28)
    }
}
