//
//  InvertTreeKataTests.swift
//  InvertTreeKataTests
//
//  Created by Artem Kislitsyn on 12.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import InvertTreeKata

class InvertTreeKataTests: XCTestCase {
    
	func testTree(){
		//arrange
		
		let tree = TreeCollection()
		let leftNode = tree.addNode(val:2)
		//act
		let node = tree.addNode(val: 1, leftNode: leftNode)
		print(node.asString)
		//assert
		XCTAssertEqual(1, node.val, "not equal")
		XCTAssertEqual(2, node.left?.val, "not equal")
	}
	
//	let rootNode = TreeNode(4)
//
//	let leftRootNode = TreeNode(2)
//
//	rootNode.left = leftRootNode
//
//
//	var childOne = TreeNode(1)
//	var childSecond = TreeNode(3)
//
//	leftRootNode.left = childOne
//	leftRootNode.right = childSecond
//
//
//	let rightRootNode = TreeNode(7)
//	rootNode.right = rightRootNode
//
//	var childRightOne = TreeNode(6)
//	var childRightSecond = TreeNode(9)
//
//	rightRootNode.left = childRightOne
//	rightRootNode.right = childRightSecond
//
//	withUnsafePointer(to: &childOne) { NSLog("\($0)") }
	
	
	func testInvertTree(){
		//arrange
		let tree = TreeCollection()
		let leftRootNode = TreeNode(val: 2)
		let childOne = TreeNode(val: 1)
		let childSecond = TreeNode(val: 3)
		leftRootNode.left = childOne
		leftRootNode.right = childSecond
		let rightRootNode = TreeNode(val: 7)
		let childRightOne = TreeNode(val: 6)
		let childRightSecond = TreeNode(val: 9)
		
		rightRootNode.left = childRightOne
		rightRootNode.right = childRightSecond
		let node = tree.addNode(val: 4, leftNode: leftRootNode, rightNode: rightRootNode)
		
		//act
		print(node.asString)
		tree.invertTree()
		print(node.asString)
		
		//assert
		XCTAssertEqual(4, node.val, "not equal")
		XCTAssertEqual(2, node.right?.val, "not equal")
		XCTAssertEqual(1, node.right?.right?.val, "not equal")
		XCTAssertEqual(3, node.right?.left?.val, "not equal")
		XCTAssertEqual(7, node.left?.val, "not equal")
		XCTAssertEqual(9, node.left?.left?.val, "not equal")
		XCTAssertEqual(6, node.left?.right?.val, "not equal")
	}
    
}
