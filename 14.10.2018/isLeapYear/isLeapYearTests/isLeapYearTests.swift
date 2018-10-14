//
//  isLeapYearTests.swift
//  isLeapYearTests
//
//  Created by Artem Kislitsyn on 14.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import isLeapYear

class isLeapYearTests: XCTestCase {

	func testIsLeapYear() {
		//arrange
		let year = 2000
		
		//act
		let result = year.isLeapYear()
		
		//assert
		XCTAssertEqual(result, true, "not equal")
		
	}
	
	func testIsNotLeapYear() {
		//arrange
		let year = 2001
		
		//act
		let result = year.isLeapYear()
		
		//assert
		XCTAssertEqual(result, false, "not equal")
		
	}


}
