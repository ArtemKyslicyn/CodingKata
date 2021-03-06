//
//  SegmentTreeTests.swift
//  SegmentTreeTests
//
//  Created by Artem Kislitsyn on 25.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import SegmentTree

class SegmentTreeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSegmentTree() {
		//arrange
		let array = [1, 2, 3, 4]
		let sumSegmentTree = SegmentTree(array: array, function: +)
		
		//act
		let result = sumSegmentTree.query(leftBound: 0, rightBound: 3) // 1 + 2 + 3 + 4 = 10
		
		//assert
		assert(result == 10, "is not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
