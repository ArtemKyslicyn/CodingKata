//
//  DuplicatesArrayKataTests.swift
//  DuplicatesArrayKataTests
//
//  Created by Artem Kislitsyn on 10.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import DuplicatesArrayKata

class DuplicatesArrayKataTests: XCTestCase {

	func testIsDuplicates() {
		//arrange
		let arr = ["10","9","3","4","4"]
	
		//act
		let result = arr.hasDuplicates()
		
		//assert
		XCTAssertEqual(result, true, "not equal")
		
	}

}
