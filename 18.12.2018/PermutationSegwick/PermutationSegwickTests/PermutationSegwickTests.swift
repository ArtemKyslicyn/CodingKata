//
//  PermutationSegwickTests.swift
//  PermutationSegwickTests
//
//  Created by Artem Kislitsyn on 18.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import PermutationSegwick

class PermutationSegwickTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSegwick() {
		
		//arrange
		let numbers = [0, 0, 0, 0]  // must be all zeros
		var pos = -1
		//act
		let result = permuteSedgewick(numbers, 2, &pos)
		
		//assert
		XCTAssertEqual(result.count, 4, "not equal")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
