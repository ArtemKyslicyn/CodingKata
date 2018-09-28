//
//  ReverseNumberKataTests.swift
//  ReverseNumberKataTests
//
//  Created by Artem Kislitsyn on 28.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ReverseNumberKata

class ReverseNumberKataTests: XCTestCase {


	func testReverseNumber() {
		//arrange
		var i = 98
		
		//act
		i.reverseNumber()
		
		//assert
		XCTAssertEqual(89, i, "not equal")
	}

}
