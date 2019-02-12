//
//  LeastCommon.swift
//  LeastCommon
//
//  Created by Artem Kislitsyn on 12.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func greatestCommonDenominator(a: Int, b: Int) -> Int {
	return b == 0 ? a : greatestCommonDenominator(a: b, b: a % b)
}

func leastCommonMultiple(range: Range<Int>) -> Int {
	return range.reduce(into: 1) { (a, b) in  a*=(b / greatestCommonDenominator(a: a, b: b))}
}


func leastCommon(_ num:Int) -> Int
{
	return leastCommonMultiple(range: 1..<num)
}
