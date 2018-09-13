//
//  Queue.swift
//  ClasicQueueKata
//
//  Created by Artem Kislitsyn on 13.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class Queue {
	var size = 0
	var tail :QueueNode?
	var head :QueueNode?
	
	public func push (val:Int)
	{
		let node = QueueNode()
		node.value = val
		self.tail?.next = node
		
		self.tail = node
		if self.head  == nil
		{
			self.head = node
		}
	
		self.size += 1
	}
	
	public func pull() -> Int?
	{
		return self.pullNode()?.value;
	}
	
	public func show()
	{
		show(first: self.head)
	}
	
	func show(first:QueueNode?)
	{
		var tmp = first?.next;
		while(tmp != nil)
		{
			print("LOG \(String(describing: tmp?.value))");
			tmp=tmp?.next;
		}
	}

	
	func pullNode () -> QueueNode?
	{
		self.size = self.size > 0 ? self.size - 1 : 1
		let last = head
		head = last?.next
		return last;
	}
	
}
