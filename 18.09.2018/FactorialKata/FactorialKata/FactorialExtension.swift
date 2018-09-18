//
//  FactorialExtension.swift
//  FactorialKata
//
//  Created by Artem Kislitsyn on 18.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	public func factorial() -> Int {
		var factorial = 1
		
		for i  in  1...self{
			factorial = factorial * i
		}
		
		return factorial
	}
}
