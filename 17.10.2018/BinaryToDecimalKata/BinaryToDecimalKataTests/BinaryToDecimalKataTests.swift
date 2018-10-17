//
//  BinaryToDecimalKataTests.swift
//  BinaryToDecimalKataTests
//
//  Created by Artem Kislitsyn on 17.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import BinaryToDecimalKata

class BinaryToDecimalKataTests: XCTestCase {

	func testBinaryToDecimal() {
		//arrange
		let num = 10
		
		//act
		let result = num.decimalNumberFromBinary()
		
		//assert
		XCTAssertEqual(result, 2, "not equal")
		
	}

}
