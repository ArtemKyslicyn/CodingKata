//
//  TreeNode.swift
//  KataTree
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class TreeNode: NodeProtocol {
	var left: NodeProtocol?
	var right: NodeProtocol?
	var val:Int = 0
	
	public required init(val: Int) {
		self.val = val
		self.left = nil
		self.right = nil
	}
}
