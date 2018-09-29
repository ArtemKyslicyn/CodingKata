//
//  SQRTKataTests.swift
//  SQRTKataTests
//
//  Created by Artem Kislitsyn on 29.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import SQRTKata

class SQRTKataTests: XCTestCase {

	func testSqrtNumber() {
		//arrange
		var i:Double = 25
		
		//act
		i.sqrt()
		
		//assert
		XCTAssertEqual(5, i, "not equal")
	}

}
