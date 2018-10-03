//
//  FirstOccurencyInStringTests.swift
//  FirstOccurencyInStringTests
//
//  Created by Artem Kislitsyn on 03.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import FirstOccurencyInString

class FirstOccurencyInStringTests: XCTestCase {

	func testFirstOccurencyString() {
		//arrange
		let i = "ad as ad as"
		
		//act
		let result:Int = i.indexOfFirstOccurrenciesOfString(word: "as")
		
		//assert
		XCTAssertEqual(3, result, "not equal")
	}

}
