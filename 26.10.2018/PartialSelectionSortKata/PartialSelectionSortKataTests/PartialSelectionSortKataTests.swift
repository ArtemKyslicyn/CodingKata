//
//  PartialSelectionSortKataTests.swift
//  PartialSelectionSortKataTests
//
//  Created by Artem Kislitsyn on 26.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import PartialSelectionSortKata

class PartialSelectionSortKataTests: XCTestCase {

	func testSelectionSort() {
		
		//arrange
		var arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		arr.selectionSort(k:9)
		
		//assert
		XCTAssertEqual(arr, [1,2,3,4,5,6,7,8,9,10], "not equal")
		
	}

}
