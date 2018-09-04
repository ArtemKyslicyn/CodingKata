//
//  Calc.swift
//  KataCalc
//
//  Created by Artem Kislitsyn on 03.09.2018.
//  Copyright © 2018 FreeIPA Mobile. All rights reserved.
//

import Cocoa

class Calc<T:Numeric> {
	
	func plus(a:T,b:T) -> T
	{
		return a+b
	}
	
	func minus(a:T,b:T) -> T
	{
		return a-b
	}
	
	func mul(a:T,b:T) -> T
	{
		return a*b
	}
	
	func div<T:FloatingPoint>(a:T,b:T) -> T
	{
		return a/b
	}

}
