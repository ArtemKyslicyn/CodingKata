//
//  GreatComonDivisorKataTests.swift
//  GreatComonDivisorKataTests
//
//  Created by Artem Kislitsyn on 19.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import GreatComonDivisorKata

class GreatComonDivisorKataTests: XCTestCase {
    
	
    
    func testGCD() {
		//arrange
		let i = 98
		
		//act
		let result:Int = i.calcGCD(secondNumber: 56)
		
		//assert
		XCTAssertEqual(14, result, "not equal")
    }
    
	
    
}
