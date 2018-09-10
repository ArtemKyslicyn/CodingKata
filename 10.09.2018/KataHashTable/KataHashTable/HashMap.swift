//
//  HashTable.swift
//  KataHashTable
//
//  Created by Artem Kislitsyn on 08.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class HashMap: NSObject {

	let tableSize = 128
	var table:[HashEntry?]!
	
	override init() {
		super.init()
		 table = [HashEntry?](repeating: nil, count: self.tableSize)
	}
	
	func putKey(key:Int, value:Int)
	{
		var hash = key % tableSize;
		while (table[hash] == nil && table[hash]?.key != key)
		{
		
		    hash = (hash + 1) % tableSize;
		
			table[hash] = HashEntry(key: key, value: value);
		}
		
	}
	
	func getKey(key:Int) -> Int
	{
		var hash = key % tableSize;
		while (table[hash] == nil && table[hash]?.key != key)
		{
			
			hash = (hash + 1) % tableSize;
			
			if let value  = table[hash]?.value
			{
				return value;
			}
		}
		return -1
	}
	
}
