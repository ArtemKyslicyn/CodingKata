//
//  PalindromMulTests.swift
//  PalindromMulTests
//
//  Created by Artem Kislitsyn on 10.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import PalindromMul

class PalindromMulTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testMaxPalindromMul() {
		//arrange
		let numberStart  = 100
		let numberEnd  = 999
		//act
		let result = maxPalindromMul(from: numberStart, to:numberEnd)
		//assert
		XCTAssertEqual(906609,result, "not equal")
	}
	
	func testMax2PalindromMul() {
		//arrange
		let numberStart  = 0
		let numberEnd  = 99
		//act
		let result = maxPalindromMul(from: numberStart, to:numberEnd)
		//assert
		XCTAssertEqual(9009,result, "not equal")
	}


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
