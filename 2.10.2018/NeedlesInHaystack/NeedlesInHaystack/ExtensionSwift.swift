//
//  ExtensionSwift.swift
//  NeedlesInHaystack
//
//  Created by Artem Kislitsyn on 02.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension String
{
	public func numberOfOccurrenciesOfString (word:String) -> Int
	{
	 var count = 0
	 var str = self
	 while  str.range(of: word, options: .caseInsensitive) != nil{
			count+=1
		    str.removeSubrange( str.range(of: word, options: .caseInsensitive)!)
	 }
	 return count
	}
	
}

