//
//  PascalTriangleTests.swift
//  PascalTriangleTests
//
//  Created by Artem Kislitsyn on 13.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import PascalTriangle

class PascalTriangleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
		//arrange
		let n = 10
		
		//act
		let result = pascal(n:n)
		
		//assert
		XCTAssertEqual([1, 9, 36, 84, 126, 126, 84, 36, 9, 1],result, "not equal")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
