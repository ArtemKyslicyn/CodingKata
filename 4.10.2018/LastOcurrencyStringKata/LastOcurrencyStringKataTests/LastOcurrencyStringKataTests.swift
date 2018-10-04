//
//  LastOcurrencyStringKataTests.swift
//  LastOcurrencyStringKataTests
//
//  Created by Artem Kislitsyn on 04.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import LastOcurrencyStringKata

class LastOcurrencyStringKataTests: XCTestCase {

	func testLastOccurencyString() {
		//arrange
		let i = "ad as ad as"
		
		//act
		let result:Int = i.indexOfFirstOccurrenciesOfString(word: "as")
		
		//assert
		XCTAssertEqual(9, result, "not equal")
	}


}
