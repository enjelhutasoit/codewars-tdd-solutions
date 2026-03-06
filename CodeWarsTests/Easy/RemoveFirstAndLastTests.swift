//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class RemoveFirstAndLastTests: XCTestCase {
    
    private var sut: RemoveFirstAndLast!
    
    override func setUp() {
        super.setUp()
        sut = RemoveFirstAndLast()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_removeFirstAndLast_whenInputHasTwoCharacters_returnsEmptyString() {
        XCTAssertEqual(sut.removeFirstAndLast("ab"), "")
    }
    
    func test_removeFirstAndLast_givenLessThanTwoChars_returnsEmptyString() {
        XCTAssertEqual(sut.removeFirstAndLast("a"), "")
    }
    
    func test_removeFirstAndLast_whenInputHasThreeCharacters_returnsMiddleCharacter() {
        XCTAssertEqual(sut.removeFirstAndLast("abc"), "b")
    }
    
    func test_removeFirstAndLast_whenInputIsCommonWord_returnsCorrectSubstring() {
        XCTAssertEqual(sut.removeFirstAndLast("eloquent"), "loquen")
    }
    
    func test_removeFirstAndLast_whenInputIsAnotherWord_returnsCorrectSubstring() {
        XCTAssertEqual(sut.removeFirstAndLast("country"), "ountr")
    }
    
    func test_removeFirstAndLast_whenInputContainsNumbers_returnsCorrectSubstring() {
        XCTAssertEqual(sut.removeFirstAndLast("a123b"), "123")
    }
    
    func test_removeFirstAndLast_whenInputContainsSpecialCharacters_returnsCorrectSubstring() {
        XCTAssertEqual(sut.removeFirstAndLast("#hello!"), "hello")
    }
    
    func test_removeFirstAndLast_whenCalledMultipleTimes_returnsConsistentResult() {
        XCTAssertEqual(sut.removeFirstAndLast("person"), "erso")
    }
}
