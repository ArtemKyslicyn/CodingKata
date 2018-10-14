//
//  NumericExtension.swift
//  isLeapYear
//
//  Created by Artem Kislitsyn on 14.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation


extension Int
{
	func isLeapYear() -> Bool
	{
		let givenYear = self
		
		var remainder4 = 0, remainder100 = 0, remainder400 = 0;
		remainder4   = givenYear % 4;
		remainder100 = givenYear % 100;
		remainder400 = givenYear % 400;
		return ((remainder4 == 0 && remainder100 != 0) || remainder400 == 0) ? true : false;
	}
}



