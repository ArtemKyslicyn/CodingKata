//
//  SumDigitsKataTests.swift
//  SumDigitsKataTests
//
//  Created by Artem Kislitsyn on 27.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import SumDigitsKata

class SumDigitsKataTests: XCTestCase {

	
    func testSumDigits() {
		//arrange
		let i = 98
		
		//act
		let result:Int = i.sumDigits()
		
		//assert
		XCTAssertEqual(17, result, "not equal")
    }

}
