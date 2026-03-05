//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class MakeUpperCaseTests: XCTestCase {
    
    private var sut: MakeUpperCase!
    
    override func setUp() {
        super.setUp()
        sut = MakeUpperCase()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_inputString_returnStringCapitalized() {
        let cases = [
            ("hello", "HELLO"),
            ("hello world", "HELLO WORLD"),
            ("hello world !", "HELLO WORLD !"),
            ("heLlO wORLd !", "HELLO WORLD !"),
            ("1,2,3 hello world!", "1,2,3 HELLO WORLD!"),
        ]
        
        for (input, expected) in cases {
            XCTAssertEqual(sut.makeUpperCase(input), expected, "Input: \(input) should return: \(expected)")
        }
    }
}
