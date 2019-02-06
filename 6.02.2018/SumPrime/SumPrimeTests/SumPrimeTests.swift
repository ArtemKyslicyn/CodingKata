//
//  SumPrimeTests.swift
//  SumPrimeTests
//
//  Created by Artem Kislitsyn on 06.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import SumPrime

class SumPrimeTests: XCTestCase {

    override func setUp() {
        // http://euler.jakumo.org/problems/view/10.html
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testIsPrime() {
		//arrange
		let a = 10
		//act
		let result = sumPrime(n: a)
		//assert
		XCTAssertEqual(result,17)
	}
	
}
