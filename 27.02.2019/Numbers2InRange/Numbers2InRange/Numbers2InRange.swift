//
//  Numbers2InRange.swift
//  Numbers2InRange
//
//  Created by Artem Kislitsyn on 27.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func number2InRange(n:Int) -> Int{
	var count = 0
	
	for i in 1...n {
		count += number2In(n: i)
	}

	
	return count
}

func number2In( n:Int) -> Int{
	var count = 0;
	var num = n
		while (num > 0) {
			if (num % 10 == 2) {
				count+=1;
			}
			num = num / 10;
		}
	return count
}


