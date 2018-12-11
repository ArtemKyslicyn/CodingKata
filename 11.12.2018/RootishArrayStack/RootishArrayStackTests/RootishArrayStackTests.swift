//
//  RootishArrayStackTests.swift
//  RootishArrayStackTests
//
//  Created by Artem Kislitsyn on 11.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import RootishArrayStack

fileprivate extension RootishArrayStack {
	func equal(toArray array: Array<Int>) -> Bool {
		for index in 0..<count {
			guard let integerElement = self[index] as? Int else { return false }
			if array[index] != integerElement {
				return false
			}
		}
		return true
	}
}

	


	
class RootishArrayStackTests: XCTestCase {

	private func buildList(withNumbers numbers: [Int]? = nil) -> RootishArrayStack<Int> {
		var list = RootishArrayStack<Int>()
		
		if let numbers = numbers {
			for number in numbers {
				list.append(element: number)
			}
		}
		return list
	}
	
	
	func testInsertFront() {
		
		//arrange
		var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		var list = buildList(withNumbers: array)
		
		let newElement = 0
		
		//act
		list.insert(element: newElement, atIndex: 0)
		array.insert(newElement, at: 0)
		
		//assert
		XCTAssertEqual(list.count, 11)
		XCTAssertEqual(list.capacity, 21)
		XCTAssertEqual(list.first, newElement)
		XCTAssertTrue(list.equal(toArray: array))
	}
	
	func testInsertMiddle() {
		//arrange
		var array = [0, 2, 3]
		var list = buildList(withNumbers: array)
		
		
		//act
		let newElement = 1
		list.insert(element: newElement, atIndex: 1)
		array.insert(newElement, at: 1)
		
		//assert
		XCTAssertEqual(list.count, 4)
		XCTAssertEqual(list.capacity, 10)
		XCTAssertEqual(list[1], newElement)
		XCTAssertTrue(list.equal(toArray: array))
	}
	

}
