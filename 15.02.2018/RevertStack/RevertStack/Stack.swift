//
//  Stack.swift
//  RevertStack
//
//  Created by Artem Kislitsyn on 15.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

class Stack <T> {
	var arr = [T]()
	
	func reverse ()
	{
		return arr.reverse()
	}
	func count () -> Int
	{
		return arr.count
	}
	
	func push(_ object:T) {
		arr.append(object)
	}
	func peek() -> T?{
		return arr.last
	}
	
	func pop() -> T?{
		return arr.count > 0 ? arr.removeLast(): nil
	}
}
