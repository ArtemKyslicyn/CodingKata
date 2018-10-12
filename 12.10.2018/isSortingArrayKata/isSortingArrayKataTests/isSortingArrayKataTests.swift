//
//  isSortingArrayKataTests.swift
//  isSortingArrayKataTests
//
//  Created by Artem Kislitsyn on 12.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import isSortingArrayKata

class isSortingArrayKataTests: XCTestCase {

	func testIsNotSorted() {
		
		//arrange
		let arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		let result = arr.isSorting()
		
		//assert
		XCTAssertEqual(result,false, "not equal")
		
		
	}
	
	func testIsSorted() {
		
		//arrange
		let arr = [1,2,3,4,5,6,7,8,9,10]
		
		//act
		let result = arr.isSorting()
		
		//assert
		XCTAssertEqual(result,true, "not equal")
		
	}

}
