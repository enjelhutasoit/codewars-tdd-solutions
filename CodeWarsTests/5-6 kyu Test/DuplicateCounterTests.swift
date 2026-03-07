//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class DuplicateCounterTests: XCTestCase {
    
    private var sut: DuplicateCounter!
    
    override func setUp() {
        super.setUp()
        sut = DuplicateCounter()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_countDuplicates_whenStringHasNoRepeatedCharacters_returnsZero() {
        XCTAssertEqual(sut.countDuplicates("abc"), 0)
    }
    
    func test_countDuplicates_whenStringContainsSingleRepeatedCharacter_returnsOne() {
        XCTAssertEqual(sut.countDuplicates("aa"), 1)
    }
    
    func test_countDuplicates_whenStringContainsTwoDistinctDuplicates_returnsTwo() {
        XCTAssertEqual(sut.countDuplicates("ABBA"), 2)
    }
    
    func test_countDuplicates_whenDuplicatesAreCaseInsensitive_countsCorrectly() {
        XCTAssertEqual(sut.countDuplicates("Indivisibilities"), 2)
    }
    
    func test_countDuplicates_whenStringContainsLettersAndDigits_duplicatesCountedCorrectly() {
        XCTAssertEqual(sut.countDuplicates("aA11"), 2)
    }
}
