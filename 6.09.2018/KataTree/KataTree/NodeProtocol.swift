//
//  TreeNodeProtocol.swift
//  KataTree
//
//  Created by Artem Kislitsyn on 06.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol NodeInitable
{
	init(val: Int)
}

protocol NodeProtocol : NodeInitable {
	var left: NodeProtocol?{get set}
	var right: NodeProtocol?{get set}
	var val:Int{get set}
	
}
