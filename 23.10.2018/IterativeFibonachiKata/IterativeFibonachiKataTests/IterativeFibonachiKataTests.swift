//
//  IterativeFibonachiKataTests.swift
//  IterativeFibonachiKataTests
//
//  Created by Artem Kislitsyn on 23.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import IterativeFibonachiKata

class IterativeFibonachiKataTests: XCTestCase {

	func testFibonachi() {
		//arrange
		let numberFib  = 4
	
		//act
		let result = numberFib.iterativeFibonachi()
		//assert
		XCTAssertEqual([0,1,1,2],result, "not equal")
	}

}
