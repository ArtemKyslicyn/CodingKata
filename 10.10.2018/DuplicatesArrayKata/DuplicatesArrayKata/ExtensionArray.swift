//
//  ExtensionArray.swift
//  DuplicatesArrayKata
//
//  Created by Artem Kislitsyn on 10.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element:Hashable
{
	
	func hasDuplicates() -> Bool {
		var hashDictioanary = [Int:Element]()
		
		for element in self
		{
			let hash = element.hashValue
			if hashDictioanary[hash]  == nil
			{
				hashDictioanary[hash] = element
			}else{
				return true
			}
			
		}
		
		return false
	}
	
}


