//
//  StrategyTests.swift
//  StrategyTests
//
//  Created by Artem Kislitsyn on 11.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Strategy

class StrategyTests: XCTestCase {

	func testStateUnautorized() {
		
		//arrange
		
		let lower = Printer(strategy: LowerCaseStrategy())
		let upper = Printer(strategy: UpperCaseStrategy())
		
		//act
		
		let stringLower = lower.print("O tempora, o mores!")
		let stringUpper = upper.print("O tempora, o mores!")
		
		//assert
		
		XCTAssertEqual(stringLower,"o tempora, o mores!")
		XCTAssertEqual(stringUpper,"O TEMPORA, O MORES!")
		
		
		
	}

}
