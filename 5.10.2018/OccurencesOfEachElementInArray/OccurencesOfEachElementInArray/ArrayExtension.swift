//
//  ArrayExtension.swift
//  OccurencesOfEachElementInArray
//
//  Created by Artem Kislitsyn on 05.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array
{
	public func cocoaImplementationOfOccurencesOfEachElementInArray () -> NSDictionary
	{
		let set = NSCountedSet(array: self)
		let dic = NSMutableDictionary()
		let array = set.allObjects
		
		for object in array
		{
			dic[object] = NSNumber(value:set.count(for: object))
		}
		
		return dic
	}
}



