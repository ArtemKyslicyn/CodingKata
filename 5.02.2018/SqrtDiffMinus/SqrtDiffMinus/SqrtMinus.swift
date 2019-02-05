//
//  SqrtMinus.swift
//  SqrtDiffMinus
//
//  Created by Artem Kislitsyn on 05.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation


func  sqrtMinus(num:Int)->Int
{
	var sumSqrt:Decimal = 0
	var sqrtSum:Decimal = 0
	
	for index in 1...num {
		sumSqrt +=  pow(Decimal(index),2)
		sqrtSum += Decimal(index)
	}
	sqrtSum = pow(sqrtSum,2)
	let result = sqrtSum - sumSqrt
	return NSDecimalNumber(decimal: result).intValue
}
