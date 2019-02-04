//
//  Multiples3or5Tests.swift
//  Multiples3or5Tests
//
//  Created by Artem Kislitsyn on 04.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import Multiples3or5

class Multiples3or5Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMultiplies() {
		//arrange
		 let a = 10
		//act
		 let result = multiples(count: a)
		//assert
		XCTAssertEqual(result,23)
    }
	
	func testMultipliesFor1000() {
		//arrange
		let a = 1000
		//act
		let result = multiples(count: a)
		//assert
		XCTAssertEqual(result,233168)
	}


}
