//
//  PriorityQueueTests.swift
//  PriorityQueueTests
//
//  Created by Artem Kislitsyn on 19.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import PriorityQueue
private struct Message {
	let text: String
	let priority: Int
}

private func < (m1: Message, m2: Message) -> Bool {
	return m1.priority < m2.priority
}

class PriorityQueueTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testOneElement() {
		
		//arrange
		var queue = PriorityQueue<Message>(sort: <)
		
		queue.enqueue(Message(text: "hello", priority: 100))

		//act
		let result = queue.dequeue()
		
		//assert
		XCTAssertEqual(result!.priority, 100)
		XCTAssertTrue(queue.isEmpty)
		XCTAssertEqual(queue.count, 0)
		XCTAssertNil(queue.peek())
	}
	
	func testTwoElementsInOrder() {
		
		//arrange
		var queue = PriorityQueue<Message>(sort: <)
		
		
		//act
		queue.enqueue(Message(text: "hello", priority: 100))
		queue.enqueue(Message(text: "world", priority: 200))
	
		//assert
		let result1 = queue.dequeue()
		XCTAssertEqual(result1!.priority, 100)
		XCTAssertFalse(queue.isEmpty)
		XCTAssertEqual(queue.count, 1)
		XCTAssertEqual(queue.peek()!.priority, 200)
		
		let result2 = queue.dequeue()
		XCTAssertEqual(result2!.priority, 200)
		XCTAssertTrue(queue.isEmpty)
		XCTAssertEqual(queue.count, 0)
		XCTAssertNil(queue.peek())
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
