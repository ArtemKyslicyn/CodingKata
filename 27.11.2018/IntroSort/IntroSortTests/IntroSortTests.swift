//
//  IntroSortTests.swift
//  IntroSortTests
//
//  Created by Artem Kislitsyn on 27.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import IntroSort

class IntroSortTests: XCTestCase {

	func testSelectionSort() {
		
		//arrange
		var arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		introsort(&arr, by: <)
		
		//assert
		XCTAssertEqual(arr, [1,2,3,4,5,6,7,8,9,10], "not equal")
		
	}

}
