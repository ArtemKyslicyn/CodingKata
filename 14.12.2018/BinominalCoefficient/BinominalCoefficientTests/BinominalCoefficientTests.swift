//
//  BinominalCoefficientTests.swift
//  BinominalCoefficientTests
//
//  Created by Artem Kislitsyn on 14.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import BinominalCoefficient

class BinominalCoefficientTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBinominalCoefficient()
	{
		//arrange
		
		//act
		 let result = binomialCoefficient(30, choose: 15)
		
		//assert
		XCTAssertEqual(result, 155117520, "not equal")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
