//
//  HeapSortTests.swift
//  HeapSortTests
//
//  Created by Artem Kislitsyn on 28.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import HeapSort

class HeapSortTests: XCTestCase {

	func testSelectionSort() {
		
		//arrange
		var arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		arr.selectionSort()
		
		//assert
		XCTAssertEqual(arr, [1,2,3,4,5,6,7,8,9,10], "not equal")
		
	}
	
	func testHeapSort() {
		
		//arrange
		var arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		arr.heapSort()
		
		//assert
		XCTAssertEqual(arr, [1,2,3,4,5,6,7,8,9,10], "not equal")
		
	}

}
