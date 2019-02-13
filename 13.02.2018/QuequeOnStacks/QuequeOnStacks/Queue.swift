//
//  Queue.swift
//  QuequeOnStacks
//
//  Created by Artem Kislitsyn on 13.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

class Queue <T> {
	let stackInbox =  Stack <T>()
	let stackOutbox =  Stack <T>()
	
	func enque(_ object:T)  {
		stackInbox.push(object)
		
	}
	
	func deque() -> T {
		
		if (stackOutbox.count() == 0)
		{
			var element = stackInbox.pop()
			
			while(element != nil)
			{
				stackOutbox.push( element!)
				element = stackInbox.pop()
				
			
			}
			
		}
		
		
		return stackOutbox.pop()!
	}
}
