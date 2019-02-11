//
//  MaxDivisior.swift
//  MaxDivisior
//
//  Created by Artem Kislitsyn on 11.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
	guard n >= 2     else { return false }
	guard n != 2     else { return true  }
	guard n % 2 != 0 else { return false }
	return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}

func maxFactors(of n: Int) -> Int {
	let arr = factors(of:n)
	var res = [Int]()
	for i in arr
	{
		if isPrime(i)
		{
			res.append(i)
		}
	}
	return res.max() ?? 0
}

func factors(of n: Int) -> [Int] {
	let sqrtn = Int(Double(n).squareRoot())
	var factors: [Int] = []
	factors.reserveCapacity(2 * sqrtn)
	for i in 1...sqrtn {
		if n % i == 0 {
			factors.append(i)
		}
	}
	var j = factors.count - 1
	if factors[j] * factors[j] == n {
		j -= 1
	}
	while j >= 0 {
			factors.append(n / factors[j])
		j -= 1
	}
	return factors
}
