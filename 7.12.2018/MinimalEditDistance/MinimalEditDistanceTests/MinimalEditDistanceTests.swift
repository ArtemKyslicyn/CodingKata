//
//  MinimalEditDistanceTests.swift
//  MinimalEditDistanceTests
//
//  Created by Artem Kislitsyn on 07.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import MinimalEditDistance

class MinimalEditDistanceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDistance() {
		//Arrange
		 let word = "Door"
		//Act
		let result = word.minimumEditDistance(other: "Dolls")
		//Assert
		XCTAssertEqual(result, 3, "Distance not correct")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
