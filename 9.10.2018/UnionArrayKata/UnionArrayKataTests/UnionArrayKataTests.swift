//
//  UnionArrayKataTests.swift
//  UnionArrayKataTests
//
//  Created by Artem Kislitsyn on 09.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import UnionArrayKata

class UnionArrayKataTests: XCTestCase {

	func testUnion() {
		//arrange
		let arr = [10,9,3,4,5,6,7,8,1,2]
		let arr2 = [10,9,3,4]
		//act
		let arr3:[Int] = arr.union(from: arr2).sorted()
		
		//assert
		XCTAssertEqual(arr3, [1,2,3,4,5,6,7,8,9,10], "not equal")
		
	}

}
