//
//  ExchangeKataTests.swift
//  ExchangeKataTests
//
//  Created by Artem Kislitsyn on 08.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ExchangeKata

class ExchangeKataTests: XCTestCase {
    
	
    func testExchange()
	{
		//arrange
		let exchange = Exchange()
		var a = 5
		var b = 4
		//act
		exchange.exchenge(a: &a, b: &b)
		//assert
		XCTAssertEqual(4, a, "not equal")
		XCTAssertEqual(5, b, "not equal")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
    
}
