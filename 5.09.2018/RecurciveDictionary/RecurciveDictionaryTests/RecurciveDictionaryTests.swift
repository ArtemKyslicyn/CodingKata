//
//  RecurciveDictionaryTests.swift
//  RecurciveDictionaryTests
//
//  Created by Artem Kislitsyn on 05.09.2018.
//  Copyright © 2018 Sber. All rights reserved.
//

import XCTest
@testable import RecurciveDictionary

class RecurciveDictionaryTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNestedDictionary() {
		
		//arrange
		let nested  = NestedDictionary()
		//act
		let r: String = nested.returnDictionaryForKey(keyPath: ["1","2"], dictionary:["1":["2":"100"]]) ?? "dd"
		//assert
		XCTAssertEqual("100", r, "not equal")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
