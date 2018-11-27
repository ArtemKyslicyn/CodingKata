//
//  IntroSort.swift
//  IntroSort
//
//  Created by Artem Kislitsyn on 27.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

public func introsort<T>(_ array: inout [T],  by areInIncreasingOrder: (T, T) -> Bool) {
	//The depth limit is as best practice 2 * log( n )
	let depthLimit = 2 * floor(log2(Double(array.count)))
	
	introSortImplementation(for: &array, range: 0..<array.count, depthLimit: Int(depthLimit), by: areInIncreasingOrder)
}

///This method is recursively executed for each partition result of the quicksort part of the algorithm
private func introSortImplementation<T>(for array: inout [T], range: Range<Int>, depthLimit: Int, by areInIncreasingOrder: (T, T) -> Bool) {
	if array.distance(from: range.lowerBound, to: range.upperBound) < 20 {
		insertionSort(for: &array, range: range, by: areInIncreasingOrder)
	} else if depthLimit == 0 {
		
		heapsort(for: &array, range: range, by: areInIncreasingOrder)
	} else {
		
		let partIdx = partitionIndex(for: &array, subRange: range, by: areInIncreasingOrder)
		
		introSortImplementation(for: &array, range: range.lowerBound..<partIdx, depthLimit: depthLimit &- 1, by: areInIncreasingOrder)
		introSortImplementation(for: &array, range: partIdx..<range.upperBound, depthLimit: depthLimit &- 1, by: areInIncreasingOrder)
	}
}

public func partitionIndex<T>(for elements: inout [T], subRange range: Range<Int>, by areInIncreasingOrder: (T, T) -> Bool) -> Int {
	var lo = range.lowerBound
	var hi = elements.index(before: range.upperBound)
	
	let half = elements.distance(from: lo, to: hi) / 2
	let mid = elements.index(lo, offsetBy: half)
	
	sort3(in: &elements, a: lo, b: mid, c: hi, by: areInIncreasingOrder)
	let pivot = elements[mid]
	
	while true {
		elements.formIndex(after: &lo)
		guard findLo(in: elements, pivot: pivot, from: &lo, to: hi, by: areInIncreasingOrder) else { break }
		elements.formIndex(before: &hi)
		guard findHi(in: elements, pivot: pivot, from: lo, to: &hi, by: areInIncreasingOrder) else { break }
		elements.swapAt(lo, hi)
	}
	
	
	return lo
}

private func findLo<T>(in array: [T], pivot: T, from lo: inout Int, to hi: Int, by areInIncreasingOrder: (T, T)->Bool) -> Bool {
	while lo != hi {
		if !areInIncreasingOrder(array[lo], pivot) {
			return true
		}
		array.formIndex(after: &lo)
	}
	return false
}

private func findHi<T>(in array: [T], pivot: T, from lo: Int, to hi: inout Int, by areInIncreasingOrder: (T, T)->Bool) -> Bool {
	while hi != lo {
		if areInIncreasingOrder(array[hi], pivot) { return true }
		array.formIndex(before: &hi)
	}
	return false
}

public func sort3<T>(in array: inout [T], a: Int, b: Int, c: Int, by areInIncreasingOrder: (T, T) -> Bool) {
	switch (areInIncreasingOrder(array[b], array[a]),
			areInIncreasingOrder(array[c], array[b])) {
	case (false, false): break
	case (true, true): array.swapAt(a, c)
	case (true, false):
		array.swapAt(a, b)
		
		if areInIncreasingOrder(array[c], array[b]) {
			array.swapAt(b, c)
		}
	case (false, true):
		array.swapAt(b, c)
		
		if areInIncreasingOrder(array[b], array[a]) {
			array.swapAt(a, b)
		}
	}
}

public func insertionSort<T>(for array: inout [T], range: Range<Int>, by areInIncreasingOrder: (T, T) -> Bool) {
	guard !range.isEmpty else { return }
	
	let start = range.lowerBound
	var sortedEnd = start
	
	array.formIndex(after: &sortedEnd)
	while sortedEnd != range.upperBound {
		let x = array[sortedEnd]
		
		var i = sortedEnd
		repeat {
			let predecessor = array[array.index(before: i)]
			
			guard areInIncreasingOrder(x, predecessor) else { break }
			array[i] = predecessor
			array.formIndex(before: &i)
		} while i != start
		
		if i != sortedEnd {
			array[i] = x
		}
		array.formIndex(after: &sortedEnd)
	}
	
}

private func shiftDown<T>(_ elements: inout [T], _ index: Int, _ range: Range<Int>, by areInIncreasingOrder: (T, T) -> Bool) {
	let countToIndex = elements.distance(from: range.lowerBound, to: index)
	let countFromIndex = elements.distance(from: index, to: range.upperBound)
	
	guard countToIndex + 1 < countFromIndex else { return }
	
	let left = elements.index(index, offsetBy: countToIndex + 1)
	var largest = index
	if areInIncreasingOrder(elements[largest], elements[left]) {
		largest = left
	}
	
	if countToIndex + 2 < countFromIndex {
		let right = elements.index(after: left)
		if areInIncreasingOrder(elements[largest], elements[right]) {
			largest = right
		}
	}
	
	if largest != index {
		elements.swapAt(index, largest)
		shiftDown(&elements, largest, range, by: areInIncreasingOrder)
	}
	
}

private func heapify<T>(_ list: inout [T], _ range: Range<Int>, by areInIncreasingOrder: (T, T) -> Bool) {
	let root = range.lowerBound
	var node = list.index(root, offsetBy: list.distance(from: range.lowerBound, to: range.upperBound)/2)
	
	while node != root {
		list.formIndex(before: &node)
		shiftDown(&list, node, range, by: areInIncreasingOrder)
	}
}

public func heapsort<T>(for array: inout [T], range: Range<Int>, by areInIncreasingOrder: (T, T) -> Bool) {
	var hi = range.upperBound
	let lo = range.lowerBound
	heapify(&array, range, by: areInIncreasingOrder)
	array.formIndex(before: &hi)
	
	while hi != lo {
		array.swapAt(lo, hi)
		shiftDown(&array, lo, lo..<hi, by: areInIncreasingOrder)
		array.formIndex(before: &hi)
	}
}
