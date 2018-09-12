//
//  TreeNode.swift
//  KataTree
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

final class TreeNode   {
	var left: TreeNode?
	
	var right: TreeNode?
	
	var val: Int
	
	public required init(val: Int) {
		self.val = val
		self.left = nil
		self.right = nil
	}
}
//final class TreeNode <T:NodeProtocol> :NodeProtocol {
//	var left: TreeNode<T>?
//
//	var right: TreeNode<T>?
//
//	var val: Int
//
//	public required init(val: Int) {
//		self.val = val
//		self.left = nil
//		self.right = nil
//	}
//}

extension TreeNode
{

	var asString:String {
		let logger = TreeLogger()
		return logger.treeString(self, using: {

			let left  =  $0.left
			let right =  $0.right
			return ( "\($0.val)", left, right)
		})

	}
}
