//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest


final class CodeWarsTests: XCTestCase {
  func test_sumNumbers_returnsTotal() {
    let num1 = 1
    let num2 = 2
    let num3 = 3
    
    let sut = SumNumber()
    let result = sut.goals(laLigaGoals: num1, copaDelReyGoals: num2, championsLeagueGoals: num3)
    let expResult = 6
    
    XCTAssertEqual(result, expResult)
  }
}
