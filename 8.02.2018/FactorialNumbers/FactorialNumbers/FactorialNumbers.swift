//
//  FactorialNumbers.swift
//  FactorialNumbers
//
//  Created by Artem Kislitsyn on 08.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

public func fib (n:Int) -> Int
{
	if n <= 1
	{
		return n
	}
	return fib(n:n-1) + fib(n: n-2)
}
func factorial(_ factorialNumber: UInt64) -> UInt64 {
	if factorialNumber == 0 {
		return 1
	} else {
		return factorialNumber * factorial(factorialNumber - 1)
	}
}



extension UInt64
{
	public func factorialSumNumbers() -> [UInt64]
	{
		var number = self
		
		var array = [UInt64]()
		
		while (number != 0) {
			number -= 1;
			if number.factorial()  == number.sumDigits() && number > 2
			{
				array.append(number)
			}
		}
		return array;
	}
	
	public func factorial() -> UInt64 {
		if self < 2
		{
			return 0
		}
		
		var factorial:UInt64 = 1
		
		for i  in  1...self{
			factorial = factorial * i
		}
		
		return factorial
	}
	
	public func sumDigits() -> UInt64
	{
		var number:UInt64 = self
		var sum :UInt64   = 0;
		
		while (number != 0) {
			sum    = sum + number % 10;
			number = number / 10;
		}
		return sum;
	}
}
