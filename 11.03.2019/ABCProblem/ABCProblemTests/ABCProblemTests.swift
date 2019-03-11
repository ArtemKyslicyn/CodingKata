//
//  ABCProblemTests.swift
//  ABCProblemTests
//
//  Created by Artem Kislitsyn on 11.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import ABCProblem

class ABCProblemTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

	func testCanA()
	{
		//arrange
		let str = "A"
		//act
		let result = canOrNot(can: Blockable(str:str))
		//assert
		XCTAssertEqual("can",result, "not equal")
		
	}
	
	func testCanBARK()
	{
		//arrange
		let str = "BARK"
		//act
		let result = canOrNot(can: Blockable(str:str))
		//assert
		XCTAssertEqual("can",result, "not equal")
		
	}
	
	func testCannotBOOK()
	{
		//arrange
		let str = "BOOK"
		//act
		let result = canOrNot(can: Blockable(str:str))
		//assert
		XCTAssertEqual("cannot",result, "not equal")
		
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
