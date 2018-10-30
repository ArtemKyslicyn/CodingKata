//
//  AbstractFactoryKataTests.swift
//  AbstractFactoryKataTests
//
//  Created by Artem Kislitsyn on 30.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import AbstractFactoryKata

class AbstractFactoryKataTests: XCTestCase {

	func testNumberFactory() {
		
		//arrange
		let factoryOne = NumberValueFactory.factory(for: .nextStep)
		let numberOne = factoryOne("1")
		
		//act
		let value = numberOne.stringValue()
		
		//assert
		XCTAssertEqual(value, "1")
		
	}
	
	func testSwiftNumberFactory() {
		
		//arrange
		let factoryTwo = NumberValueFactory.factory(for: .swift)
		let numberTwo = factoryTwo("2")
		
		//act
		let value = numberTwo.stringValue()
		
		//assert
		XCTAssertEqual(value, "2")
		
	}
	

}
