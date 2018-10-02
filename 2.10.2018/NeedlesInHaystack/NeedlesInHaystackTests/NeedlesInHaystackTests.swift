//
//  NeedlesInHaystackTests.swift
//  NeedlesInHaystackTests
//
//  Created by Artem Kislitsyn on 02.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import NeedlesInHaystack

class NeedlesInHaystackTests: XCTestCase {

	func testNeelesInHaystack() {
		//arrange
		let i = "ad as ad as"
		
		//act
		let result:Int = i.numberOfOccurrenciesOfString(word: "ad")
		
		//assert
		XCTAssertEqual(2, result, "not equal")
	}
}
