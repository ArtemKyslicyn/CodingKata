//
//  AdapterTests.swift
//  AdapterTests
//
//  Created by Artem Kislitsyn on 13.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Adapter

class AdapterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdapter() {
		
		//arrange
		
		let target = DeathStarSuperlaserTarget(angleHorizontal: 14.0, angleVertical: 12.0)
	
		//act
		
		let oldFormat = OldDeathStarSuperlaserTarget(target)
		
		//assert
		
		XCTAssertEqual(oldFormat.angleH.doubleValue,14)
		XCTAssertEqual(oldFormat.angleV.doubleValue,12)
		
		
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }


}
