//
//  SwapTests.swift
//  SwapTests
//
//  Created by Artem Kislitsyn on 04.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import Swap

class SwapTests: XCTestCase {

	
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        //arrange
		 var a = 5
	     var b = 6
		//act
		 swap(&a,&b)
		//assert
		XCTAssertEqual(a,6, "not equal")
		XCTAssertEqual(b,5, "not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
