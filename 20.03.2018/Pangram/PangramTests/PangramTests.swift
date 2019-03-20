//
//  PangramTests.swift
//  PangramTests
//
//  Created by Artem Kislitsyn on 20.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import Pangram

class PangramTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPangram() {
		//arrange
		 let str = "the quick brown fox jumps over the lazy dog"
		
		//act
		let result = isPangram(str: str)
		
		//assert
	
		XCTAssertEqual(true,result, "not equal")
		
    }
	
	func testNoPangram() {
		//arrange
		let str = "test string"
		
		//act
		let result = isPangram(str: str)
		
		//assert
		
		XCTAssertEqual(false,result, "not equal")
		
	}



}
