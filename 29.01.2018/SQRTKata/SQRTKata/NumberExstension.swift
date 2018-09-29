//
//  NumberExstension.swift
//  SQRTKata
//
//  Created by Artem Kislitsyn on 29.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Double
{
	public mutating func absolutNumber()
	{
		if self < 0{
			self = -self
		}
	}
	
	public mutating func sqrt()
	{
		if self < 0{
			self = -self;
		}
		
		let epsilon = 0.000000000000000000000000000000000000000001
		var guess = 1.0
		
		while (abs((guess * guess - self)) >= epsilon) {
			guess = (self / guess + guess) / 2.0;
		}
		
		self = guess;
	}
	
}
