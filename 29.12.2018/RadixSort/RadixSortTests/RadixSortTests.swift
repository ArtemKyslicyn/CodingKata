//
//  RadixSortTests.swift
//  RadixSortTests
//
//  Created by Artem Kislitsyn on 29.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import RadixSort

class RadixSortTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testCombSort() {
		//arrange
		let expectedSequence: [Int] = [2, 9, 19, 32, 55, 67, 89, 101, 912, 4242]
		var sequence = [19, 4242, 2, 9, 912, 101, 55, 67, 89, 32]
		
		//act
		radixSort(&sequence)
		
		//assert
		XCTAssertEqual(sequence, expectedSequence)
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
