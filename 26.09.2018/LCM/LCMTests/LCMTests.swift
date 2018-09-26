//
//  LCMTests.swift
//  LCMTests
//
//  Created by Artem Kislitsyn on 26.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import LCM

class LCMTests: XCTestCase {

	func testGCD() {
		//arrange
		let i = 98
		
		//act
		let result:Int = i.calcGCD(secondNumber: 56)
		
		//assert
		XCTAssertEqual(14, result, "not equal")
	}
	
	
	func testLCM() {
		//arrange
		let i = 98
		
		//act
		let result:Int = i.calcLCM(secondNumber: 56)
		
		//assert
		XCTAssertEqual(392, result, "not equal")
	}
	

}
