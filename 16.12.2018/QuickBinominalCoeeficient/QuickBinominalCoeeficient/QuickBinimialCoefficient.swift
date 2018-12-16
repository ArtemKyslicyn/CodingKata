//
//  QuickBinimialCoefficient.swift
//  QuickBinominalCoeeficient
//
//  Created by Artem Kislitsyn on 16.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

/*
Calculates C(n, k), or "n-choose-k", i.e. the number of ways to choose
k things out of n possibilities.
*/
func quickBinomialCoefficient(_ n: Int, choose k: Int) -> Int {
	var result = 1
	
	for i in 0..<k {
		result *= (n - i)
		result /= (i + 1)
	}
	return result
}


