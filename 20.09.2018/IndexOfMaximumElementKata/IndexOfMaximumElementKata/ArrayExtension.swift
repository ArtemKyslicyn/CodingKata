//
//  ArrayExtension.swift
//  IndexOfMaximumElementKata
//
//  Created by Artem Kislitsyn on 20.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element: Comparable
{
	public func indexOfMaximumElement() -> Int
	{
		var indexOfMaximumElement = 0
		if var maxElement = self.first {
			for i in 0...self.count-1{
				
				if self[i] > maxElement
				{
					maxElement = self[i]
					indexOfMaximumElement = i
				}
				
			}
		}
		return indexOfMaximumElement
	}
}
