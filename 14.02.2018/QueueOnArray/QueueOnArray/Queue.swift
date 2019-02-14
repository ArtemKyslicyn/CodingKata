//
//  Queue.swift
//  QueueOnArray
//
//  Created by Artem Kislitsyn on 14.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

class Queue <T> {
	
	var arr = [T]()
	
	func count () -> Int
	{
		return arr.count
	}
	
	func enque(_ object:T)  {
		arr.append(object)
	}
	
	func deque() -> T? {
		
		return arr.first
	}
}
