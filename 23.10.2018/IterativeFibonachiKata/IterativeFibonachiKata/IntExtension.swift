//
//  IntExtension.swift
//  IterativeFibonachiKata
//
//  Created by Artem Kislitsyn on 23.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation


extension Int
{
	public func iterativeFibonachi() -> [Int]
	{
		var resultArray = [Int]()
		
		resultArray.append(0)
		resultArray.append(1)

		
		for i in 2..<self {
			let foo = resultArray[i - 2]  + resultArray[i - 1]
			resultArray.append(foo);
		}
		
		return resultArray
	}
}
