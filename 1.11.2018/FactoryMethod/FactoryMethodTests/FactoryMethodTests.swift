//
//  FactoryMethodTests.swift
//  FactoryMethodTests
//
//  Created by Artem Kislitsyn on 01.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FactoryMethod

class FactoryMethodTests: XCTestCase {

	func testEurFactory() {
		
		//arrange
	
		//act
		let value = CurrencyFactory.currency(for: .spain)?.code() 
		
		//assert
		XCTAssertEqual(value, "EUR")
		
	}
	
	func testUSDFactory() {
		
		//arrange
				
		//act
		let value = CurrencyFactory.currency(for: .unitedStates)?.code()
		
		//assert
		XCTAssertEqual(value, "USD")
		
	}
	
	func testBPFactory() {
		
		//arrange
		
		
		//act
		let value = CurrencyFactory.currency(for: .uk)?.code()
		
		//assert
		XCTAssertEqual(value, nil)
		
	}
}
