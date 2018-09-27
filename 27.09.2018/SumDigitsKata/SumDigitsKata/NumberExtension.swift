//
//  NumberExtension.swift
//  SumDigitsKata
//
//  Created by Artem Kislitsyn on 27.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	public func sumDigits() -> Int
	{
		var number = self
		var sum    = 0;
		
		while (number != 0) {
			sum    = sum + number % 10;
			number = number / 10;
		}
		return sum;
	}
}
