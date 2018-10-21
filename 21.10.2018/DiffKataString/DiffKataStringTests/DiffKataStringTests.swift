//
//  DiffKataStringTests.swift
//  DiffKataStringTests
//
//  Created by Artem Kislitsyn on 21.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import DiffKataString

class DiffKataStringTests: XCTestCase {

	func testIsCountDif() {
		//arrange
		let year = "153"
		let year2 = "154"
		
		//act
		let result = year.diffString(string: year2)?.count
		
		//assert
		XCTAssertEqual(result, 1, "not equal")
		
	}
	
	func testIsCorrectRange() {
		//arrange
		let year = "153"
		let year2 = "154"
		
		//act
		let result = year.diffString(string: year2)?[0]
		
		//assert
		XCTAssertEqual(result, Range(NSMakeRange(2,3), in: year), "not equal")
		
	}
	
	

}
