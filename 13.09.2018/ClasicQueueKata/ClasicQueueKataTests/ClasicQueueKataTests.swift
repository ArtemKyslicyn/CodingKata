//
//  ClasicQueueKataTests.swift
//  ClasicQueueKataTests
//
//  Created by Artem Kislitsyn on 13.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ClasicQueueKata

class ClasicQueueKataTests: XCTestCase {
    
	func testQueue(){
		//arrange
		let queue  = Queue()
		
		//act
		queue.push(val: 1)
		queue.push(val: 2)
		queue.push(val: 3)
		
		
		//assert
		XCTAssertEqual(1, queue.pull(), "not equal")
		XCTAssertEqual(2, queue.pull(), "not equal")
		XCTAssertEqual(3, queue.pull(), "not equal")
	}
    
}
