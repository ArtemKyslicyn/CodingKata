//
//  ExtensionArray.swift
//  UnionArrayKata
//
//  Created by Artem Kislitsyn on 09.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element:Hashable
{
	public func union(from array: [Element]) -> [Element]
	{
		let set = Set(self)
		let setSecondArray = Set(array)
		let result =  Array(set.union(setSecondArray))
		return result
	}
}
