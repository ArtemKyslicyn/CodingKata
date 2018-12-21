//
//  CountingSortTests.swift
//  CountingSortTests
//
//  Created by Artem Kislitsyn on 21.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import CountingSort

class CountingSortTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testCountingSort() {
		
		//arrange
		let sequence = [10, 8, 1, 2, 5, 8]
		let sortedSequence = [1, 2, 5, 8, 8, 10]
		
	   //act
		let afterCountingSort =  countingSort(sequence)
		
		//assert
		XCTAssertEqual(afterCountingSort, sortedSequence)
		
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
