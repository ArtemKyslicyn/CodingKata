//
//  ShortestStringArrayTests.swift
//  ShortestStringArrayTests
//
//  Created by Artem Kislitsyn on 25.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ShortestStringArray

class ShortestStringArrayTests: XCTestCase {
    
	func testLongestString() {
		//arrange
		let arr = ["Bar","baaar","b","Baaaaaaaaaaaaar"]
		
		//act
		let str = arr.shortestStringInArray()
		
		//assert
		XCTAssertEqual("b",str , "not equal")
		
	}
	
    
}
