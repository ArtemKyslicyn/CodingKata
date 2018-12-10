//
//  RingBufferTests.swift
//  RingBufferTests
//
//  Created by Artem Kislitsyn on 11.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import RingBuffer

class RingBufferTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRingBuffer() {
		//arrange
		var buffer = RingBuffer<Int>(count: 5)
		
		//act
		buffer.write(123)
		buffer.write(456)
		buffer.write(789)
		buffer.write(666)
		
		//assert
        let arr =	buffer.array
		XCTAssertEqual(arr, [123,456,789,666,nil], "not equal")
		XCTAssertEqual(buffer.readIndex, 0, "not equal")
		XCTAssertEqual(buffer.writeIndex, 4, "not equal")
		XCTAssertEqual(buffer.availableSpaceForReading, 4, "not equal")
		XCTAssertEqual(buffer.availableSpaceForWriting, 1, "not equal")
    }

}
