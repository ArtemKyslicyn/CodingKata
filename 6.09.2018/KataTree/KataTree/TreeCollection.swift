//
//  Tree.swift
//  KataTree
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class TreeCollection <T:NodeProtocol> {
	var rootNode :T?
	var node :T?
	
	public func addNode(val:Int,leftNode:T? = nil,rightNode:T? = nil) ->T
	{
		var node = T(val:val)
		node.left = leftNode
		node.right = rightNode
		return  node
	}
	
}
