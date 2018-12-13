//
//  Combinations.swift
//  Combinations
//
//  Created by Artem Kislitsyn on 13.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

/* Calculates n! */
func factorial(_ n: Int) -> Int {
	var n = n
	var result = 1
	while n > 1 {
		result *= n
		n -= 1
	}
	return result
}

func permutations(_ n: Int, _ k: Int) -> Int {
	var n = n
	var answer = n
	for _ in 1..<k {
		n -= 1
		answer *= n
	}
	return answer
}

/*
Calculates C(n, k), or "n-choose-k", i.e. how many different selections
of size k out of a total number of distinct elements (n) you can make.
*/
func combinations(_ n: Int, choose k: Int) -> Int {
	return permutations(n, k) / factorial(k)
}
