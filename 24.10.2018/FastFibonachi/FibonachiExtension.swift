//
//  FibonachiExtension.swift
//  FastFibonachi
//
//  Created by Artem Kislitsyn on 24.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	public func fastFibonachi64() -> UInt64 {
		
		var beforeLast:UInt64 = 0, last:UInt64 = 1;
		var index = self
		while (index > 0) {
			index-=1
			last += beforeLast;
			beforeLast = last - beforeLast;
		}
		
		if (index == 0) {
			return beforeLast;
		}
		
		return last;
	}
}
