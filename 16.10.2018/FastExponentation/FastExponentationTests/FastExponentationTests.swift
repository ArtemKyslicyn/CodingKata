//
//  FastExponentationTests.swift
//  FastExponentationTests
//
//  Created by Artem Kislitsyn on 16.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FastExponentation

class FastExponentationTests: XCTestCase {

	func testIFast() {
		//arrange
		let val = 2
		
		//act
		let result = val.fastExp(power: 2)
		
		//assert
		XCTAssertEqual(result, 4, "not equal")
		
	}
	
	func testIFastCubuc() {
		//arrange
		let val = 2
		
		//act
		let result = val.fastExp(power: 3)
		
		//assert
		XCTAssertEqual(result, 8, "not equal")
		
	}

}
