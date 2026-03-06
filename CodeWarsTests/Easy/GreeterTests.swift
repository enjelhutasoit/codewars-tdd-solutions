//
// Copyright © 2026 Enjel Hutasoit. All rights reserved.
//

import XCTest

final class GreeterTests: XCTestCase {
    
    private var sut: Greeter!
    
    override func setUp() {
        super.setUp()
        sut = Greeter()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_greet_whenNameAsInput_returnsFormattedGreetingWithName() {
        XCTAssertEqual(sut.greet("Blazej"), "Hello, Blazej how are you doing today?")
    }
}
