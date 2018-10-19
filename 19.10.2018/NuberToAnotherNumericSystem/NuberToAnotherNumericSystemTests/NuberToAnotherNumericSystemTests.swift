//
//  NuberToAnotherNumericSystemTests.swift
//  NuberToAnotherNumericSystemTests
//
//  Created by Artem Kislitsyn on 19.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import NuberToAnotherNumericSystem

class NuberToAnotherNumericSystemTests: XCTestCase {

	func testBinaryToDecimal() {
		//arrange
		let num = 2
		
		//act
		let result = num.numberWithBase(base:2)
		
		//assert
		XCTAssertEqual(result, "10", "not equal")
		
	}
	
	func test16ToDecimal() {
		//arrange
		let num = 12
		
		//act
		let result = num.numberWithBase(base:16)
		
		//assert
		XCTAssertEqual(result, "C", "not equal")
		
	}
	
	func test8ToDecimal() {
		//arrange
		let num = 9
		
		//act
		let result = num.numberWithBase(base:8)
		
		//assert
		XCTAssertEqual(result, "11", "not equal")
		
	}

}
