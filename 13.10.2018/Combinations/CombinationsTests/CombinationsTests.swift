//
//  CombinationsTests.swift
//  CombinationsTests
//
//  Created by Artem Kislitsyn on 13.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Combinations

class CombinationsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testFiveCombinations() {
		
		//act
		let result = combinations(5, choose: 3)
		
		//assert
		XCTAssertEqual(result, 10, "not equal")
	}
	
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
