//
//  StringExtension.swift
//  LastOcurrencyStringKata
//
//  Created by Artem Kislitsyn on 04.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension String
{
	public func indexOfFirstOccurrenciesOfString (word:String) -> Int
	{
		var startPos = -1
		
		if let  range  =   self.range(of: word, options:[.caseInsensitive, .backwards]){
			startPos = self.distance(from: self.startIndex, to: range.lowerBound)
			
		}
		return startPos
	}
	
}
