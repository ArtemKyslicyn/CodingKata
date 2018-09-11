//
//  Fibonachi.swift
//  FibonachKata
//
//  Created by Artem Kislitsyn on 11.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class Fibonachi {
	
	public func fib (n:Int) -> Int
	{
		if n <= 1
		{
			return n
		}
		return fib(n:n-1) + fib(n: n-2)
	}

}
