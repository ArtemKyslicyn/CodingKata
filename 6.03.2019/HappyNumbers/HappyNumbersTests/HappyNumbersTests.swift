//
//  HappyNumbersTests.swift
//  HappyNumbersTests
//
//  Created by Artem Kislitsyn on 06.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import HappyNumbers

class HappyNumbersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHappyNumbers() {
		//arrange
		let a = 8
		
		//act
		let result = findHappyNumbersCount(countNumbers: a)
		
		//assert
		XCTAssertEqual(result,[1, 7, 10, 13, 19, 23, 28, 31], "not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
