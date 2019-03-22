//
//  HighOrderFunctionTests.swift
//  HighOrderFunctionTests
//
//  Created by Artem Kislitsyn on 22.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import HighOrderFunction

class HighOrderFunctionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHighOrder() {
		
		//arrange
		let result = func3 {(x, y) in x + y} // prints "3"
		
		XCTAssertEqual(3,result, "not equal")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
