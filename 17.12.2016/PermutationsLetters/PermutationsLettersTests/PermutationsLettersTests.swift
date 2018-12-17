//
//  PermutationsLettersTests.swift
//  PermutationsLettersTests
//
//  Created by Artem Kislitsyn on 17.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import PermutationsLetters

class PermutationsLettersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func tesFullPermutations() {
		
		//arrange
		let letters = ["a", "b", "c", "d", "e"]
		print("Permutations of \(letters):")
		
		//act
		let result = permuteWirth(letters, letters.count - 1)
		
		//assert
		XCTAssertEqual(result.count, 120, "not equal")
		
		
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
	func testNumPermutations() {
		
		//arrange
		let xyz = [ "x", "y", "z" ]
		print("\nPermutations of \(xyz):")
		
		//act
		let result = permuteWirth(xyz, 2)
		
		//assert
	    XCTAssertEqual(result.count, 6, "not equal")
		
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
