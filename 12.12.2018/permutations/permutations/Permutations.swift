//
//  Permutations.swift
//  permutations
//
//  Created by Artem Kislitsyn on 12.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

/*
Calculates P(n, k), the number of permutations of n distinct symbols
in groups of size k.
*/
func permutations(_ n: Int, _ k: Int) -> Int {
	var n = n
	var answer = n
	for _ in 1..<k {
		n -= 1
		answer *= n
	}
	return answer
}


