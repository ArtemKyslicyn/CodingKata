//
//  LeastCommonTests.swift
//  LeastCommonTests
//
//  Created by Artem Kislitsyn on 12.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import LeastCommon

class LeastCommonTests: XCTestCase {

 
	
	func testIsLeastCommon() {
		//arrange
		let a = 10
		//act
		let result = leastCommon(a)
		//assert
		XCTAssertEqual(result,2520)
	}
	
	func testIsLeastCommonTwenty() {
		//arrange
		let a = 20
		//act
		let result = leastCommon(a)
		//assert
		XCTAssertEqual(result,232792560)
	}


}
