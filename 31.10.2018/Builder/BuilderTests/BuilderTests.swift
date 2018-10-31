//
//  BuilderTests.swift
//  BuilderTests
//
//  Created by Artem Kislitsyn on 31.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Builder

class BuilderTests: XCTestCase {

	func testBuilder() {
		
		//arrange
		let KBSuhoj = FlightBuilder { builder in
			builder.x = 0.1
			builder.y = 0.2
			builder.z = 0.3
		}
		
	
		//act
		let SU57 = Flight(builder:KBSuhoj)
		
		//assert
		XCTAssertEqual(SU57?.x,0.1)
		XCTAssertEqual(SU57?.y,0.2)
		XCTAssertEqual(SU57?.z,0.3)
		
	}

}
