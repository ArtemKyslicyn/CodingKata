//
//  SkipListTests.swift
//  SkipListTests
//
//  Created by Artem Kislitsyn on 28.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import SkipList

class SkipListTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSkipList() {
		//arrange
		let skipList = SkipList<String,Int>()
		skipList.insert(key: "k", data:2)
		//act
		
		let result = skipList.get(key: "k")
		
        //assert
		assert(result == 2,"not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
