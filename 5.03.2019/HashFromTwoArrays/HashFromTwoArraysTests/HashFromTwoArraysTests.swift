//
//  HashFromTwoArraysTests.swift
//  HashFromTwoArraysTests
//
//  Created by Artem Kislitsyn on 05.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import HashFromTwoArrays

class HashFromTwoArraysTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHashArrays() {
		//arrange
		let keys = ["a","b","c"]
		let vals = [1,2,3]
		
		//act
		let result = hashArrays(of: keys,vals: vals)
		//assert
		
		XCTAssertEqual(result,["a":1,"b":2,"c":3], "not equal")
    }


}
