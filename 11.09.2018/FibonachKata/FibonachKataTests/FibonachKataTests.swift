//
//  FibonachKataTests.swift
//  FibonachKataTests
//
//  Created by Artem Kislitsyn on 11.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FibonachKata

class FibonachKataTests: XCTestCase {
    
	
    func testFibonachi() {
		//arrange
		let numberFib  = 9
		let fibObject = Fibonachi()
		//act
		let result = fibObject.fib(n: numberFib)
		//assert
		XCTAssertEqual(34,result, "not equal")
    }
    

    
}
