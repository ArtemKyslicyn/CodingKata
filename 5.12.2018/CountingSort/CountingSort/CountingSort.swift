//
//  CountingSort.swift
//  CountingSort
//
//  Created by Artem Kislitsyn on 05.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

func countingSort(_ array: [Int])-> [Int] {
	guard array.count > 0 else {return []}
	
	let maxElement = array.max() ?? 0
	
	var countArray = [Int](repeating: 0, count: Int(maxElement + 1))
	for element in array {
		countArray[element] += 1
	}
	
	for index in 1 ..< countArray.count {
		let sum = countArray[index] + countArray[index - 1]
		countArray[index] = sum
	}
	
	print(countArray)
	
	var sortedArray = [Int](repeating: 0, count: array.count)
	for element in array {
		countArray[element] -= 1
		sortedArray[countArray[element]] = element
	}
	return sortedArray
}
