//
//  permutationsTests.swift
//  permutationsTests
//
//  Created by Artem Kislitsyn on 12.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import permutations

class permutationsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFivePermutation() {
		
		//act
		let result = permutations(5, 3)
		
		//assert
		XCTAssertEqual(result, 60, "not equal")
    }

}
