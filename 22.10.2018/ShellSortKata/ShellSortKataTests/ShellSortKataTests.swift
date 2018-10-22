//
//  ShellSortKataTests.swift
//  ShellSortKataTests
//
//  Created by Artem Kislitsyn on 22.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ShellSortKata

class ShellSortKataTests: XCTestCase {

	func testBubleSort() {
		
		//arrange
		var arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		arr.shellSort()
		
		//assert
		XCTAssertEqual(arr, [1,2,3,4,5,6,7,8,9,10], "not equal")
		
	}
	

}
