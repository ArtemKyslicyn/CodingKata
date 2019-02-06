//
//  SumPrime.swift
//  SumPrime
//
//  Created by Artem Kislitsyn on 06.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
	guard n >= 2     else { return false }
	guard n != 2     else { return true  }
	guard n % 2 != 0 else { return false }
	return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}

func sumPrime(n:Int) -> Int
{
	var sum = 0
	for index in 1...n {
		if isPrime(index){
			sum+=index
		}
	}
	return sum
}
