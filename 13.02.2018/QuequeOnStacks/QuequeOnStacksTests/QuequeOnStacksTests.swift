//
//  QuequeOnStacksTests.swift
//  QuequeOnStacksTests
//
//  Created by Artem Kislitsyn on 13.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import QuequeOnStacks

class QuequeOnStacksTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	func testQueue() {
		//arrange
		let stack = Queue<Int>()
		let stackSecond = Stack<Int>()
		stack.enque(1)
		stack.enque(2)
		stack.enque(3)
		
		//act
		let result = stack.deque()
		
		//assert
		
	}
	
    func testStak() {
	
		//arrange
		let stack = Stack<Int>()
		let stackSecond = Stack<Int>()
		stack.push(1)
		stack.push(2)
		
		//act
		let result = stack.pop()
		
		//assert
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
