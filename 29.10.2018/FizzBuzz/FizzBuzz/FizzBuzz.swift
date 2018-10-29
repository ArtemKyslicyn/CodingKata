//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Artem Kislitsyn on 29.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Cocoa

class FizzBuzz {
	
	public func fizzBuzz(_ numberOfTurns: Int) -> [String] {
		var resultArray :[String] = [String]()
		
		for i in 1...numberOfTurns {
			var result  = ""
			
			if i % 3 == 0 {
				result += "Fizz"
			}
			
			if i % 5 == 0 {
				result += (result.isEmpty ? "" : " ") + "Buzz"
			}
			
			if result.isEmpty {
				result += "\(i)"
			}
			
			resultArray.append(result)
		}
		return resultArray;
	}

}
