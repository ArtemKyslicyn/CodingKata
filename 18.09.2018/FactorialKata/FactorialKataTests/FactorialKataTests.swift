//
//  FactorialKataTests.swift
//  FactorialKataTests
//
//  Created by Artem Kislitsyn on 18.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FactorialKata

class FactorialKataTests: XCTestCase {
    
	
    func testFactorial() {
		//arrange
		let i = 5
		
		//act
		let result:Int = i.factorial()
		
	     //assert
		 XCTAssertEqual(120, result, "not equal")
		
    }
    

}
