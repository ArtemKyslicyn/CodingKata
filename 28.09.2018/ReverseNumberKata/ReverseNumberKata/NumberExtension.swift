//
//  NumberExtension.swift
//  ReverseNumberKata
//
//  Created by Artem Kislitsyn on 28.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	public mutating func reverseNumber() {
		var numberToReverse = self
		var rightDigit = 0
		var string:String = ""
			repeat
			{
				rightDigit = numberToReverse % 10
				string.append(String(rightDigit))
			    numberToReverse = numberToReverse / 10;
			}while(numberToReverse != 0)
		   self  = Int(string) ?? numberToReverse
		}
	}
	


