//
//  RevertStackTests.swift
//  RevertStackTests
//
//  Created by Artem Kislitsyn on 15.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import RevertStack

class RevertStackTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testReverse() {
		//arrange
		let stack = Stack<Int>()
		stack.push(1)
		stack.push(2)
		stack.push(3)
		
		//act
		stack.reverse()
		let result = stack.pop()
		
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
