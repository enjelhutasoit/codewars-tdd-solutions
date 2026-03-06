//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class BoolToWordTests: XCTestCase {
    private var sut: BoolToWord!
    
    override func setUp() {
        super.setUp()
        sut = BoolToWord()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_boolToWord_whenInputIsTrue_returnsYes() {
        XCTAssertEqual(sut.boolToWord(true), "Yes")
    }
    
    func test_boolToWord_whenInputIsFalse_returnsNo() {
        XCTAssertEqual(sut.boolToWord(false), "No")
    }
}
