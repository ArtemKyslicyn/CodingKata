//
//  DecoratorTests.swift
//  DecoratorTests
//
//  Created by Artem Kislitsyn on 14.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Decorator

class DecoratorTests: XCTestCase {

	func testMilkCofee() {
		
		
		var someCoffee: Coffee = SimpleCoffee()
		
		//act
		
		someCoffee = Milk(decoratedCoffee: someCoffee)
		
		//assert
		
		XCTAssertEqual(someCoffee.getCost(),1.5)
		XCTAssertEqual(someCoffee.getIngredients(),"Coffee, Milk")
		
	}
	
	func testSimpleCofee() {
		
		//arrange
		
		let someCoffee: Coffee = SimpleCoffee()
		
		//act
		
		
		//assert
		
		XCTAssertEqual(someCoffee.getCost(),1.0)
		XCTAssertEqual(someCoffee.getIngredients(),"Coffee")

	}
	
	func testWhipCoffee() {
	
		//arrange
		
		var someCoffee: Coffee = SimpleCoffee()
		
		//act
		
		someCoffee = WhipCoffee(decoratedCoffee: someCoffee)
		
		//assert
		
		XCTAssertEqual(someCoffee.getCost(),1.7)
		XCTAssertEqual(someCoffee.getIngredients(),"Coffee, Whip")
		
	}

}
