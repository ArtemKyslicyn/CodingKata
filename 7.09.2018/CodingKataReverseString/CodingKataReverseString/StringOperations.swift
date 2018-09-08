//
//  StringOperations.swift
//  CodingKataReverseString
//
//  Created by Artem Kislitsyn on 07.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class StringObject {

	public func reverseStringSimple(string:String) -> String? {
		var reversedString = ""
		for char in string
		{
			reversedString = "\(char)" +  reversedString
		}
		
		return reversedString
	}
}
