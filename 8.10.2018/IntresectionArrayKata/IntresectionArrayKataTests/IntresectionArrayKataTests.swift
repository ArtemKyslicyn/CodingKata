//
//  IntresectionArrayKataTests.swift
//  IntresectionArrayKataTests
//
//  Created by Artem Kislitsyn on 08.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import IntresectionArrayKata

class IntresectionArrayKataTests: XCTestCase {

	func testIntersection() {
		//arrange
		let arr = [10,9,3,4,5,6,7,8,1,2]
		let arr2 = [10,9,3,4]
		//act
		let arr3:[Int] = arr.intersect(from: arr2).sorted()
		
		//assert
		XCTAssertEqual(arr3, [3,4,9,10], "not equal")
		
	}

}
