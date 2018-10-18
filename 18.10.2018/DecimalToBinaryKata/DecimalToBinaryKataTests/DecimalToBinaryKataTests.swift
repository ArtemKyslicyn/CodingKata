//
//  DecimalToBinaryKataTests.swift
//  DecimalToBinaryKataTests
//
//  Created by Artem Kislitsyn on 18.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import DecimalToBinaryKata

class DecimalToBinaryKataTests: XCTestCase {

	func testBinaryToDecimal() {
		//arrange
		let num = 2
		
		//act
		let result = num.binaryNumberFromDecimal()
		
		//assert
		XCTAssertEqual(result, 10, "not equal")
		
	}

}
