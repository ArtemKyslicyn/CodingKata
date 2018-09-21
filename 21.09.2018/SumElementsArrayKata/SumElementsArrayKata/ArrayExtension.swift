//
//  ArrayExtension.swift
//  SumElementsArrayKata
//
//  Created by Artem Kislitsyn on 21.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element: Numeric
{
	public func sumArray() -> Int
	{
		var sumElements = 0
		
		for i in 0...self.count-1{
			if let sumNum = self[i] as? Int{
				sumElements += sumNum
			}
		}
		
		return sumElements
	}
}
