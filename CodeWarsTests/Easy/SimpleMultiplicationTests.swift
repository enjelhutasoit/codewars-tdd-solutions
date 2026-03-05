//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class SimpleMultiplicationTests: XCTestCase {
    
    private var sut: SimpleMultiplication!
    
    override func setUp() {
        super.setUp()
        sut = SimpleMultiplication()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_simpleMultiplication_whenEvenNumber_returnsMultiplicationByEight() {
        let cases = [
            (8, 64),
            (2, 16),
            (-8, -64)
        ]
        
        for (index, (num, expected)) in cases.enumerated() {
            XCTAssertEqual(sut.simpleMultiplication(num), expected, "Error on index:\(index)")
        }
    }
    
    func test_simpleMultiplication_whenOddNumber_returnsMultiplicationByNine() {
        let cases = [
            (5, 45),
            (21, 189),
            (-5, -45)
        ]
        
        for (index, (num, expected)) in cases.enumerated() {
            XCTAssertEqual(sut.simpleMultiplication(num), expected, "Error on index:\(index)")
        }
    }
}
