//
//  QueueOnArrayTests.swift
//  QueueOnArrayTests
//
//  Created by Artem Kislitsyn on 14.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import QueueOnArray

class QueueOnArrayTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testQueue() {
		//arrange
		let queue = Queue<Int>()
		queue.enque(1)
		queue.enque(2)
		queue.enque(3)
		
		//act
		let result = queue.deque()
		
		//assert
		XCTAssertEqual(result, 1, "not equal")
		
	}
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
