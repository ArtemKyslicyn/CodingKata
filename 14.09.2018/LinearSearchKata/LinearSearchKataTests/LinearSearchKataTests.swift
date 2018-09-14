//
//  LinearSearchKataTests.swift
//  LinearSearchKataTests
//
//  Created by Artem Kislitsyn on 14.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import LinearSearchKata

class LinearSearchKataTests: XCTestCase {
    
	
    func testExample() {
		//arrange
		class Obj {
			var name: String?
		}
		
		let o = Obj()
		let o1 = Obj()
		let arr = [o,o1]
		
		//act
		let index = arr.linearSearch(object: o)
		
		//assert
		XCTAssertEqual(0, index, "not equal")
	
	}
    
}
