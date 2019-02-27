//
//  Numbers2InRangeTests.swift
//  Numbers2InRangeTests
//
//  Created by Artem Kislitsyn on 27.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import Numbers2InRange

class Numbers2InRangeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test2InRange()
	{
		//arrange
		 let num = 100
		//act
		let result = number2InRange(n:num)
		//assert
		XCTAssertEqual(20,result, "not equal")
		
    }

	

}
