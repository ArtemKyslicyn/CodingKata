//
//  BinarySearchKataTests.swift
//  BinarySearchKataTests
//
//  Created by Artem Kislitsyn on 07.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import BinarySearchKata

class BinarySearchKataTests: XCTestCase {

	func testQuickSearch() {
		
		//arrange
		let arr = [1,2,3,4,5,6,7,8,9,10]
		
		//act
		let index = arr.indexOfObjectViaBinarySearch(value: 8)
		
		//assert
		XCTAssertEqual(index, 7, "not equal")
		
	}

}
