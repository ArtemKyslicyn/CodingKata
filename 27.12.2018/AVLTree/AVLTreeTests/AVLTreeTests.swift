//
//  AVLTreeTests.swift
//  AVLTreeTests
//
//  Created by Artem Kislitsyn on 27.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import AVLTree

class AVLTreeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testMinimumOnSingleTreeNode() {
		//act
		let treeNode = TreeNode(key: 1, payload: "A")
		
		//arrange
		let min = treeNode.minimum()
		
	    //aasert
		XCTAssertEqual(min?.payload, treeNode.payload)
	}
	
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
