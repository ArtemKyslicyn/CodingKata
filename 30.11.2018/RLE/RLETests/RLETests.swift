//
//  RLETests.swift
//  RLETests
//
//  Created by Artem Kislitsyn on 30.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import RLE

class RLETests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
		func testKaratsuba() {
			
			//arrange
			let originalString = "aaaaabbbcdeeeeeeef"
			
			
			//act
			let utf8 = originalString.data(using: String.Encoding.utf8)!
			let compressed = utf8.compressRLE()
			
			let decompressed = compressed.decompressRLE()
			let restoredString = String(data: decompressed, encoding: String.Encoding.utf8)
			
			//assert
			XCTAssertEqual(originalString, restoredString, "not equal")
			
		}
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
