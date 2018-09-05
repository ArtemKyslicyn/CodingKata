//
//  NestedDictionary.swift
//  RecurciveDictionary
//
//  Created by Artem Kislitsyn on 05.09.2018.
//  Copyright © 2018 Sber. All rights reserved.
//

import UIKit

class NestedDictionary {
	
	func returnDictionaryForKey<T>(keyPath:[String],dictionary:[String:Any]) -> T?
	{
		var resultDictionary = dictionary
		
		for key in keyPath
		{
			if let dic = resultDictionary[key] as? [String:T]
			{
				resultDictionary = dic
			}
			else if let val =  resultDictionary[key] as? T
			{
				return val
			}
		}
		
		return nil;
	}

}
