//
//  NumExtension.swift
//  BinaryToDecimalKata
//
//  Created by Artem Kislitsyn on 17.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	public func decimalNumberFromBinary()->Int
  	{
	   var binary = self
		var decimalNumber = 0, j = 1, remainder = 0;
		
			while (binary != 0) {
				remainder     = binary % 10;
				decimalNumber = decimalNumber + remainder * j;
				j             = j * 2;
				binary        = binary / 10;
			}
		return decimalNumber;
	}
}

