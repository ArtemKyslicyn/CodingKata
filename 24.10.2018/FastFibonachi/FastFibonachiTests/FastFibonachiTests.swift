//
//  FastFibonachiTests.swift
//  FastFibonachiTests
//
//  Created by Artem Kislitsyn on 24.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FastFibonachi

class FastFibonachiTests: XCTestCase {

	func testFibonachi() {
		//arrange
		let numberFib  = 9
		//act
		let result = numberFib.fastFibonachi64()
		//assert
		XCTAssertEqual(34,result, "not equal")
	}

}
