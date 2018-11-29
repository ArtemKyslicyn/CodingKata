//
//  KaratsubaMultiplicationTests.swift
//  KaratsubaMultiplicationTests
//
//  Created by Artem Kislitsyn on 29.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import KaratsubaMultiplication

class KaratsubaMultiplicationTests: XCTestCase {

	func testKaratsuba() {
		
		//arrange
		
		
		//act
		let result = karatsuba(2, by: 4)
		
		//assert
		XCTAssertEqual(result, 8, "not equal")
		
	}
	
	
	func testKaratsubaLong() {
		
		//arrange
		
		
		//act
		let result = karatsuba(2000, by: 2000)
		
		//assert
		XCTAssertEqual(result, 4000000, "not equal")
		
	}


}
