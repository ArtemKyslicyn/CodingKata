//
//  HaversineDistanceTests.swift
//  HaversineDistanceTests
//
//  Created by Artem Kislitsyn on 09.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import HaversineDistance

class HaversineDistanceTests: XCTestCase {

    func testHaversine() {
		
		//act
		let harvestine = Harvestine()
		let amsterdam = (52.3702, 4.8952)
		let newYork = (40.7128, -74.0059)
		
		//arrange
		 let result = harvestine.haversineDinstance(la1: amsterdam.0, lo1: amsterdam.1, la2: newYork.0, lo2: newYork.1)
		//assert
		XCTAssertEqual(result, 5859270.905561898, "not equal")
		
    }
	
}
