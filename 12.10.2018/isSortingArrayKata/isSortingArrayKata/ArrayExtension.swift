//
//  ArrayExtension.swift
//  isSortingArrayKata
//
//  Created by Artem Kislitsyn on 12.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element:Comparable
{
	public func isSorting() -> Bool
	{
		for i in 1...self.count-2 {
			if self[i] > self[i+1]
			{
				return false
			}
		}
		return true
	}
}
