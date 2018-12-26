//
//  BSTTests.swift
//  BSTTests
//
//  Created by Artem Kislitsyn on 26.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import BST

class BSTTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBST() {
		//arrange
		var tree = BinarySearchTree.leaf(7)
		tree = tree.insert(newValue: 2)
		tree = tree.insert(newValue: 5)
		tree = tree.insert(newValue: 10)
		tree = tree.insert(newValue: 9)
		tree = tree.insert(newValue: 1)
		print(tree)
		
		//act
		let result  = tree.search(x: 10)
		assert(result != nil, "non empty")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
