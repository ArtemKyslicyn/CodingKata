//
//  HappyNumbers.swift
//  HappyNumbers
//
//  Created by Artem Kislitsyn on 06.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

//List<int> cache = new List<int>();
//int sum = 0;
//while (n != 1)
//{
//	if (cache.Contains(n))
//	{
//		return false;
//	}
//	cache.Add(n);
//	while (n != 0)
//	{
//		int digit = n % 10;
//		sum += digit * digit;
//		n /= 10;
//	}
//	n = sum;
//	sum = 0;
//}
//return true;

import Foundation

func isHappyNumber(n: Int) -> Bool {
	var cycle = [Int]()
	var r = n
	
	while r != 1 && !cycle.contains(r) {
		cycle.append(r)
		var m = 0
		while r > 0 {
			let d = r % 10
			m += d * d
			r = (r - d) / 10
		}
		r = m
	}
	return r == 1
}


func findHappyNumbersCount(countNumbers:Int) -> [Int]
{
	var found = 0
	var count = 1
	var result = [Int]()
	while found != 8 {
		if isHappyNumber(n: count) {
			result.append(count)
			found+=1
		}
		count+=1
	}
	return result;
}
