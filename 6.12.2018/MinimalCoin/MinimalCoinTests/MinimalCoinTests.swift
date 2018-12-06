//
//  MinimalCoinTests.swift
//  MinimalCoinTests
//
//  Created by Artem Kislitsyn on 06.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import MinimalCoin

class MinimalCoinTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
		
		let mcc = MinimumCoinChange(coinSet: [1, 2, 5, 10, 20, 25])
		
		
		do {
			
				let greedy = try mcc.changeGreedy(100)
				
				
				XCTAssertEqual(greedy, [25, 25, 25, 25], "Greedy not correct")
				
			
		} catch {
			XCTFail("Test Failed: impossible to change with the given coin set")
		}
    }



}
