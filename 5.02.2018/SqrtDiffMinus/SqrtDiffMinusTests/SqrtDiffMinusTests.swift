//
//  SqrtDiffMinusTests.swift
//  SqrtDiffMinusTests
//
//  Created by Artem Kislitsyn on 05.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import SqrtDiffMinus

class SqrtDiffMinusTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testSqrtMinus() {
		//arrange
		let a = 10
		//act
		let result = sqrtMinus(num: a)
		//assert
		XCTAssertEqual(result,2640)
	}
	
	func testSqrtMinusFor100() {
		//arrange
		let a = 100
		//act
		let result = sqrtMinus(num: a)
		//assert
		XCTAssertEqual(result,25164150)
	}

}
