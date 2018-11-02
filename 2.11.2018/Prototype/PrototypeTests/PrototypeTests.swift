//
//  PrototypeTests.swift
//  PrototypeTests
//
//  Created by Artem Kislitsyn on 02.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Prototype

class PrototypeTests: XCTestCase {

	func testNumberFactory() {
		
		//arrange
		let prototype = ChungasRevengeDisplay(font:"GotanProject")
		
		
		//act
		let philippe = prototype.clone()
		philippe.name = "Philippe"
		
		let christoph = prototype.clone()
		christoph.name = "Christoph"
		
		let eduardo = prototype.clone()
		eduardo.name = "Eduardo"
		
		//assert
		XCTAssertEqual(eduardo.font, "GotanProject")
		XCTAssertEqual(christoph.font, "GotanProject")
		XCTAssertEqual(philippe.font, "GotanProject")
		
	}
	

}
