//
//  PalindromMul.swift
//  PalindromMul
//
//  Created by Artem Kislitsyn on 10.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func maxPalindromMul(from:Int, to:Int) -> Int
{
	var max = 0;
	for index in from...to {
		for secondIndex in from...to {
			let result = index*secondIndex
			let stringResult = String(result)
			if result > max && stringResult.isPalindrom()
			{
				max = result
			}
		}
		
	}
	return max
}

extension String
{
	func isPalindromeReversed() -> Bool {
		let reverseString = String(self.reversed())
		if(self != "" && self == reverseString) {
			return true
		} else {
			return false
		}
	}
	
	public func isPalindrom() -> Bool{
		
		let joinedString = self.lowercased()
			.components(separatedBy: .punctuationCharacters).joined()
			.components(separatedBy: .whitespacesAndNewlines).joined()
		let reversed = joinedString.reverseStringSimple()
		
		return reversed == joinedString;
	}
	
	public func reverseStringSimple() -> String? {
		var reversedString = ""
		for char in self
		{
			reversedString = "\(char)" +  reversedString
		}
		
		return reversedString
	}
}
