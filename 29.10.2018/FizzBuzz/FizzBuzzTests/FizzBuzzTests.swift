//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Artem Kislitsyn on 29.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {

	func testFizzBuzznSort() {
		
		//arrange
		let fiz = FizzBuzz()
		
		//act
		let arr = fiz.fizzBuzz(15)
		
		//assert
		XCTAssertEqual(arr, ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "Fizz Buzz"], "not equal")
		
	}

}
