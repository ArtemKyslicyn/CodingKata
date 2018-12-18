//
//  PermutationSegwick.swift
//  PermutationSegwick
//
//  Created by Artem Kislitsyn on 18.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

/*
Prints out all the permutations of an n-element collection.
The initial array must be initialized with all zeros. The algorithm
uses 0 as a flag that indicates more work to be done on each level
of the recursion.
Original algorithm by Robert Sedgewick.
See also Dr.Dobb's Magazine June 1993, Algorithm Alley
*/
func permuteSedgewick(_ a: [Int], _ n: Int, _ pos: inout Int) -> [Any] {
	var array :[Any] = [Any]()
	var a = a
	pos += 1
	a[n] = pos
	if pos == a.count - 1 {
		print(a)              // display the current permutation
		array.append(a)
	} else {
		for i in 0..<a.count {
			if a[i] == 0 {
				array.append(permuteSedgewick(a, i, &pos))
			}
		}
	}
	pos -= 1
	a[n] = 0
	return array;
}


