//
//  Tree.swift
//  KataTree
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class TreeCollection {
	var rootNode : TreeNode?
	var lastNode :TreeNode?
	
	public func addNode(val:Int,leftNode:TreeNode? = nil,rightNode:TreeNode? = nil) ->TreeNode
	{
		let node = TreeNode(val:val)
		node.left = leftNode
		node.right = rightNode
		
		if rootNode == nil {
			self.rootNode = node
		}
		self.lastNode = node
		
		return  node
	}
	
	public func invertTree()  {
		self.rootNode = invertTreeWithNode(node: self.rootNode)
	}
	
	private func invertTreeWithNode( node: TreeNode?)->TreeNode?{
		let invertedLeftNode = node?.left
		if  let rightNode = node?.right {
			node?.left = invertTreeWithNode(node: rightNode)
		}
		
		if let leftNode = invertedLeftNode {
			node?.right =  invertTreeWithNode(node: leftNode)
		}
		return node
	}
	
//	private func invertTreeWithNode(node:TreeNode<<#T: NodeProtocol#>>?)->TreeNode?{
//		let invertedLeftNode = node?.left
//		if  let rightNode = node?.right{
//			node?.left = invertTreeWithNode(node: rightNode as? TreeNode)
//		}
//
//		if let leftNode = invertedLeftNode{
//			node?.right =  invertTreeWithNode(node: leftNode as? TreeNode)
//		}
//		return nil
//	}
	
}
