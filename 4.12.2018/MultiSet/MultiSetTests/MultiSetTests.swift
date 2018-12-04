//
//  MultiSetTests.swift
//  MultiSetTests
//
//  Created by Artem Kislitsyn on 04.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import MultiSet

class MultiSetTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMultiSet() {
		
		//Arrange
		var set = Multiset<String>()
		
		set.add("Foo")
		set.add("Foo")
		set.add("Bar")
		set.add("Baz")
		
		//Act
		
		let result = set.count(for: "Foo")
		
	
		
		XCTAssertEqual(result, 2, "not equal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
