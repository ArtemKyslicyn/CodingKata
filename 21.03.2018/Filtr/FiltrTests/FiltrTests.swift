//
//  FiltrTests.swift
//  FiltrTests
//
//  Created by Artem Kislitsyn on 21.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import Filtr

class FiltrTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFiltr() {
		//arrange
		let numbers = [1,2,3,4,5,6]
		
		//act
		let result = numbers.filter { $0 % 2 == 0 }
		
		//assert
		XCTAssertEqual([2,4,6],result, "not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
