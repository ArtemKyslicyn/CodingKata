//
//  KataTreeTests.swift
//  KataTreeTests
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import KataTree

class KataTreeTests: XCTestCase {
    

    func testTree(){
		//arrange
		let tree  = TreeCollection<TreeNode>()
		let leftNode = tree.addNode(val:2)
		//act
		let node = tree.addNode(val: 1, leftNode: leftNode)
		//assert
		XCTAssertEqual(1, node.val, "not equal")
		XCTAssertEqual(2, node.left?.val, "not equal")
    }
    
	
    
}
