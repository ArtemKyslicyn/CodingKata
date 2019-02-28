//
//  ArrayFilitrationTests.swift
//  ArrayFilitrationTests
//
//  Created by Artem Kislitsyn on 28.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import ArrayFilitration

class ArrayFilitrationTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testZeros() {
		//arrange
		let array  = [1, -2, 0, 8, 0, 5, 4] 
		
		//act
		let result = zeroReindex(in: array)
		//assert
		XCTAssertEqual(result,[1, -2, 8, 5, 4, 0, 0], "not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
