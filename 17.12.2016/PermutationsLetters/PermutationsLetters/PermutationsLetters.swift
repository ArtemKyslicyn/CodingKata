
//
//  PermutationsLetters.swift
//  PermutationsLetters
//
//  Created by Artem Kislitsyn on 17.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation


/*
Prints out all the permutations of the given array.
Original algorithm by Niklaus Wirth.
See also Dr.Dobb's Magazine June 1993, Algorithm Alley
*/
func permuteWirth<T>(_ a: [T], _ n: Int) -> [Any] {
	var resultArray :[Any] = [Any]()
	if n == 0 {
		resultArray.append(a)
		print(a)   // display the current permutation
	} else {
		var a = a
	    resultArray+=permuteWirth(a, n - 1)
		for i in 0..<n {
			a.swapAt(i, n)
			resultArray+=permuteWirth(a, n - 1)
			a.swapAt(i, n)
		}
	}
	return resultArray;
}


