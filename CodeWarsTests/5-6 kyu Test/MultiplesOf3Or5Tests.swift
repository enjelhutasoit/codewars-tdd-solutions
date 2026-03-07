//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class MultiplesOf3Or5Tests: XCTestCase {
    
    private var sut: MultiplesOf3Or5!
    
    override func setUp() {
        super.setUp()
        sut = MultiplesOf3Or5()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_solution_whenInputIsNegative_returnsZero() {
        XCTAssertEqual(sut.solution(-1), 0)
    }
    
    func test_solution_whenInputIsZero_returnsZero() {
        XCTAssertEqual(sut.solution(0), 0)
    }
    
    func test_solution_whenInputIsPositive_returnsSumOfMultiplesOfThreeOrFive() {
        XCTAssertEqual(sut.solution(10), 23)
        XCTAssertEqual(sut.solution(20), 78)
        XCTAssertEqual(sut.solution(200), 9168)
    }
    
    func test_solution_whenInputContainsNoMultiples_returnsZero() {
        XCTAssertEqual(sut.solution(2), 0)
        XCTAssertEqual(sut.solution(1), 0)
    }
}
