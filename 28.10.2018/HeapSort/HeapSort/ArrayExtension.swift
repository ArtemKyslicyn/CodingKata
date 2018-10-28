//
//  ArrayExtension.swift
//  HeapSort
//
//  Created by Artem Kislitsyn on 28.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable{
	
	public mutating func heapSort()  {
		
		let count = self.count;
		
		self.heapifyArrayWithSize(size: count)
		
		var end = count - 1;
		
		while (end > 0) {
			swapAt(end, 0)
		    self.siftDownArrayWith(start: 0, end: end-1)
			end-=1;
		}
		
	}
	
	mutating func heapifyArrayWithSize(size:Int)
	{
		var start = (size - 2) / 2;
		
			while (start >= 0) {
				self.siftDownArrayWith(start: start, end: size - 1)
				start-=1;
			}
	}
	
	mutating func siftDownArrayWith(start:Int, end:Int)
	{
		var root = start;
	
		while ((root * 2 + 1) <= end) {
			var child = root * 2 + 1;
	
			if (child + 1 <= end && self[child]  < self[child + 1]) {
				child+=1;
			}
	
			if (self[root]  < self[child]) {
				self.swapAt(root, child)
				root = child;
			}
			else {
				return;
			}
		}
	}
	
	
	public mutating func selectionSort()  {
		for i in 0...self.count-1{
			var min = i;
			var j = i+1
			while (j < self.count)
			{
				if self[j]  < self[min]
				{
					min = j
				}
				j+=1
				
			}
			self.swapAt(i, min)
			
		}
		
	}
}

