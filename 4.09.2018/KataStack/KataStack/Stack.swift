//
//  Stack.swift
//  KataStack
//
//  Created by Artem Kislitsyn on 04.09.2018.
//  Copyright © 2018 FreeIPA Mobile. All rights reserved.
//

import Cocoa

struct Stack<T> {

	fileprivate var array: [T] = []

	mutating func push(_ element: T) {
		array.append(element)
	}

	mutating func pop() -> T? {
		return array.popLast()
	}
	
	func peek() -> T? {
		return array.last
	}

}

extension Stack: CustomStringConvertible {
	// 2
	var description: String {
		// 3
		let topDivider = "---Stack---\n"
		let bottomDivider = "\n-----------\n"
		
		// 4
		let stackElements = array.reversed()
		// 5
		return topDivider + "\(stackElements))" + bottomDivider
	}
}
