//
//  TreeNodeProtocol.swift
//  KataTree
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

public protocol NodeInitable
{
	init(val: Int)
}

public protocol NodeProtocol : NodeInitable,AnyObject {
	associatedtype T = AnyObject;
	var left: Self?{get set}
	var right: Self?{get set}
	var val:Int{get set}
	
}
