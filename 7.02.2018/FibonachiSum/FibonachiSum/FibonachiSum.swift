//
//  FibonachiSum.swift
//  FibonachiSum
//
//  Created by Artem Kislitsyn on 07.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

public func fibSum (n:Int) -> Int
{
	let tmp =  fib(n:n-2) + fib(n: n-3)
	return fib(n:n-1) + fib(n: n-2) + tmp
}

public func fib (n:Int) -> Int
{
	if n <= 1
	{
		return n
	}
	return fib(n:n-1) + fib(n: n-2)
}

extension Int
{
	public func fastFibonachi64() -> UInt64 {
		
		var beforeLast:UInt64 = 0, last:UInt64 = 1;
		var index = self
		while (index > 0) {
			index-=1
			last += beforeLast;
			beforeLast = last - beforeLast;
		}
		
		if (index == 0) {
			return beforeLast;
		}
		
		return last;
	}
}
