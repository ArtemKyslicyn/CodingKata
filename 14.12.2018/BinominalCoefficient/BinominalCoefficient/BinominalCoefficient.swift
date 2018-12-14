//
//  BinominalCoefficient.swift
//  BinominalCoefficient
//
//  Created by Artem Kislitsyn on 14.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

/*
Calculates C(n, k), or "n-choose-k", i.e. the number of ways to choose
k things out of n possibilities.
Thanks to the dynamic programming, this algorithm from Skiena allows for
the calculation of much larger numbers, at the cost of temporary storage
space for the cached values.
*/

func binomialCoefficient(_ n: Int, choose k: Int) -> Int {
	var bc = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
	
	for i in 0...n {
		bc[i][0] = 1
		bc[i][i] = 1
	}
	
	if n > 0 {
		for i in 1...n {
			for j in 1..<i {
				bc[i][j] = bc[i - 1][j - 1] + bc[i - 1][j]
			}
		}
	}
	
	return bc[n][k]
}

