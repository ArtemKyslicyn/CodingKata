//
//  BubleSortArrayExtension.swift
//  BubleSortKata
//
//  Created by Artem Kislitsyn on 15.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable{
	public mutating func bubleSort()  {
		var a :Element;
		for i in 0...self.count-2{
			for j in 0...self.count-2-i{
				if self[j] > self[j+1]
				{
					a = self[j]
					self[j] = self[j+1]
					self[j+1] = a
					
				}
			}
		}
		
	}
}
