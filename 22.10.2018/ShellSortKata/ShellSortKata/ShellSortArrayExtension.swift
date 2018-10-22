//
//  ShellSortArrayExtension.swift
//  ShellSortKata
//
//  Created by Artem Kislitsyn on 22.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable{
	
	
	public mutating func shellSort()  {
		var a :Element;
		var h = 1
		while h < self.count / 3 {
			h = 3 * h + 1
		}
		
		while h >= 1 {
			for i in h..<self.count {
				for j in stride(from: i, to: h - 1, by: -h) {
					if self[j] < self[j - h] {
						a = self[j]
						self[j] = self[j-h]
						self[j-h] = a

					} else {
						break
					}
				}
			}
			h /= 3

		
	}
	}
}


