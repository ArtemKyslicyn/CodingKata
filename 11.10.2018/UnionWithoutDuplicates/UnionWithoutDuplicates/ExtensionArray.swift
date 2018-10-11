//
//  ExtensionArray.swift
//  UnionWithoutDuplicates
//
//  Created by Artem Kislitsyn on 11.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element: NSDictionary
{
	public func unionWithoutDuplicatesWithArray(array:[Element] ,key:String) -> [Element]
	{
		var arrayA:[Element]
		var arrayB:[Element]
		
		if self.count > array.count {
			arrayA = self;
			arrayB = array;
		} else {
			arrayA = array;
			arrayB = self;
		}
		var resultArray =  arrayA
		for object in arrayB
		{
			var hasEqualString = false;
			for obj  in arrayA
			{
				if (object.value(forKey: key) as! NSString).isEqual(to: ((obj.value(forKey: key) as! NSString) as String))
				{
					hasEqualString = true;
					break;
				}
			}
			if (!hasEqualString) {
				resultArray.append(object)
			}
		}
		return resultArray
	}
	
}

