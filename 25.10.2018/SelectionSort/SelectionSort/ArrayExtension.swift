//
//  ArrayExtension.swift
//  SelectionSort
//
//  Created by Artem Kislitsyn on 25.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable{
	public mutating func selectionSort()  {
		//var a :Element;
		
		for i in 0...self.count-1{
			var min = i;
			var j = i+1
			while (j < self.count)
			{
				
			//for j in i+1...self.count-2{
				if self[j]  < self[min]
				{
					min = j
				}
				j+=1
				
			//}
			}
			let a = self[i]
			self[i] = self[min]
			self[min] = a
			
		}
		
	}
}

//public mutating func selectionSort()  {
//	var a :Element;
//	for i in 0...self.count-2{
//		for j in 0...self.count-2-i{
//			if self[j] > self[j+1]
//			{
//				a = self[j]
//				self[j] = self[j+1]
//				self[j+1] = a
//
//			}
//		}
//	}
//
//}

//- (NSMutableArray *)selectionSort
//	{
//		NSUInteger count = self.count;
//
//		for (NSUInteger i = 0; i < count; i++) {
//			NSUInteger min = i;
//
//			for (NSUInteger j = i + 1; j < count; j++) {
//				if ([self[j] floatValue]  < [self[min] floatValue]) {
//					min = j;
//				}
//			}
//
//			[self exchangeObjectAtIndex:i withObjectAtIndex:min];
//		}
//
//		return self;
//}
