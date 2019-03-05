//
//  HashFromTwoArrays.swift
//  HashFromTwoArrays
//
//  Created by Artem Kislitsyn on 05.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func hashArrays(of keys:[String], vals:[Int]) -> [String:Int]
{
	var hash = [String: Int]()
	for (key, val) in zip(keys, vals) {
		hash[key] = val
	}
	return hash
}
