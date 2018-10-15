//
//  AmstrongNumberTests.swift
//  AmstrongNumberTests
//
//  Created by Artem Kislitsyn on 15.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import AmstrongNumber

class AmstrongNumberTests: XCTestCase {

	func testIsAmstrongNumber() {
		//arrange
		let year = 153
		
		//act
		let result = year.isAmstrongNumber()
		
		//assert
		XCTAssertEqual(result, true, "not equal")
		
	}
	
	func testIsNotAmstrongNumber() {
		//arrange
		let year = 2001
		
		//act
		let result = year.isAmstrongNumber()
		
		//assert
		XCTAssertEqual(result, false, "not equal")
		
	}

}
