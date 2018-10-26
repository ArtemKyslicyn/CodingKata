//
//  ArrayExtension.swift
//  PartialSelectionSortKata
//
//  Created by Artem Kislitsyn on 26.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable{
	public mutating func selectionSort(k:Int)  {
		
		for i in 0..<k{
			var min = i;
			var minValue = self[i];
			var j = i+1
			while (j < self.count)
			{
				let el = self[j]
				if el < minValue
				{
					min = j
					minValue = el
				}
				j+=1
				
			}
			let a = self[i]
			self[i] = self[min]
			self[min] = a
			
		}
		
	}
}

