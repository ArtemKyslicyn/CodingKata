//
//  KataStackTest.swift
//  KataStackTest
//
//  Created by Artem Kislitsyn on 04.09.2018.
//  Copyright © 2018 FreeIPA Mobile. All rights reserved.
//

import XCTest

class KataStackTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStack() {
		
		var rwBookStack = Stack<String>()
		rwBookStack.push("1")
		rwBookStack.push("2")
		rwBookStack.push("3")
		rwBookStack.push("4")
		print(rwBookStack)
		
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
	
    
}
