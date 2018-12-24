//
//  HashSetTests.swift
//  HashSetTests
//
//  Created by Artem Kislitsyn on 24.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import HashSet

class HashSetTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHashSet() {
       //arrange

		var set = HashSet<String>()
		set.insert(element: "one")
		set.insert(element: "two")
		set.insert(element: "three")
		set.insert(element: "two")
		
		//act
		let result = set.allElements().sorted()
		
		//assert
		assert(result == ["one","three","two",], "not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
