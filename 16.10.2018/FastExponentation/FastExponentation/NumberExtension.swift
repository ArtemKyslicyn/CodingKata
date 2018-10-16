//
//  NumberExtension.swift
//  FastExponentation
//
//  Created by Artem Kislitsyn on 16.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	public  func fastExp(power:Int) -> Int
	{
		var result = 1;
		var  number = self
		var pow  = power
			while (pow>0) {
				if (pow % 2 == 1) {
					result *= number;
				}
				pow /= 2;
		    	number *= number;
			}
		return result
	}
	
}

//+ (NSInteger)fastExpForNumber:(NSInteger)number withPower:(NSInteger)power
//{
//	NSInteger result = 1;
//
//	while (power) {
//		if (power % 2 == 1) {
//			result *= number;
//		}
//		power /= 2;
//		number *= number;
//	}
//
//	return result;
//}
