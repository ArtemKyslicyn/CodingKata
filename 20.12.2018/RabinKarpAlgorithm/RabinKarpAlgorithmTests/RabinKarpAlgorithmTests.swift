//
//  RabinKarpAlgorithmTests.swift
//  RabinKarpAlgorithmTests
//
//  Created by Artem Kislitsyn on 20.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import RabinKarpAlgorithm

class RabinKarpAlgorithmTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
		//arrange
		let text = "The big dog jumped over the fox";
		let pattern = "ump"
		
		//act
		let index = search(text:text,
			   pattern:pattern)
		//assert
		assert( index == 13, "Invalid index returned")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
