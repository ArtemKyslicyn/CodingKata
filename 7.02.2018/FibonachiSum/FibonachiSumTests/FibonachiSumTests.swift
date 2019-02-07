//
//  FibonachiSumTests.swift
//  FibonachiSumTests
//
//  Created by Artem Kislitsyn on 07.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import FibonachiSum

class FibonachiSumTests: XCTestCase {

	func testFibonachi() {
		//arrange
		let numberFib  = 9
		//act
		let result = fib(n: numberFib)
		//assert
		XCTAssertEqual(34,result, "not equal")
	}
	
	func testFibonachiSUM() {
		//arrange
		let numberFib  = 10
		//act
		let result = fibSum(n: numberFib)
		//assert
		XCTAssertEqual(89,result, "not equal")
	}
	
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

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
