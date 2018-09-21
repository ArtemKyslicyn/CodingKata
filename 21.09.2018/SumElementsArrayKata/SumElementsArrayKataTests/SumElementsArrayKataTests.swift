//
//  SumElementsArrayKataTests.swift
//  SumElementsArrayKataTests
//
//  Created by Artem Kislitsyn on 21.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import SumElementsArrayKata

class SumElementsArrayKataTests: XCTestCase {
    
	
    func testExample() {
		let arr = [10,9,3,4,5,6,7,8,1,22]
		
		//act
		let index = arr.sumArray()
		
		//assert
		XCTAssertEqual(75,index , "not equal")
    }
    
    
}
