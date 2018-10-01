//
//  PrimeKataTests.swift
//  PrimeKataTests
//
//  Created by Artem Kislitsyn on 01.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import PrimeKata

class PrimeKataTests: XCTestCase {

	func testPrime() {
		//arrange
		let i = 7
		
		//act
		let result:Bool = i.isPrime()
		
		//assert
		XCTAssertEqual(true, result, "not equal")
	}
	
	func testPrimeFalse() {
		//arrange
		let i = 98
		
		//act
		let result:Bool = i.isPrime()
		
		//assert
		XCTAssertEqual(false, result, "not equal")
	}
	

}
