//
//  MaxDivisiorTests.swift
//  MaxDivisiorTests
//
//  Created by Artem Kislitsyn on 11.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import MaxDivisior

class MaxDivisiorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
	func testMaxPalindromMul() {
		//arrange
		let numberStart  = 13195
		
		//act
		let result = maxFactors(of: numberStart)
		//assert
		XCTAssertEqual(29,result, "not equal")
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
