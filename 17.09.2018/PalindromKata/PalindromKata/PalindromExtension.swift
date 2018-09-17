//
//  PalindromExtension.swift
//  PalindromKata
//
//  Created by Artem Kislitsyn on 17.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension String
{
	
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

