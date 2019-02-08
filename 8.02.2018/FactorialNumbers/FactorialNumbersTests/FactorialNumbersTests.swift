//
//  FactorialNumbersTests.swift
//  FactorialNumbersTests
//
//  Created by Artem Kislitsyn on 08.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import FactorialNumbers

class FactorialNumbersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testFactorial() {
		//arrange
		let i:UInt64 = 20
		
		//act
		let result = i.factorialSumNumbers()
		
		//assert
		XCTAssertEqual([], result, "not equal")
		
	}
	
	func testDigits() {
		//arrange
		let i:UInt64 = 21
		
		//act
		let result:UInt64 = i.sumDigits()
		
		//assert
		XCTAssertEqual(3, result, "not equal")
		
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
