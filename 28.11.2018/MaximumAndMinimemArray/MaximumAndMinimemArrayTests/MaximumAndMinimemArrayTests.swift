//
//  MaximumAndMinimemArrayTests.swift
//  MaximumAndMinimemArrayTests
//
//  Created by Artem Kislitsyn on 28.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import MaximumAndMinimemArray

class MaximumAndMinimemArrayTests: XCTestCase {

	func testMaxiumMininmum() {
		
		//arrange
		let arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		let result = minimumMaximum(arr)!
		
		//assert
		XCTAssertEqual(result.maximum, 10, "not equal")
		XCTAssertEqual(result.minimum, 1, "not equal")
		
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
