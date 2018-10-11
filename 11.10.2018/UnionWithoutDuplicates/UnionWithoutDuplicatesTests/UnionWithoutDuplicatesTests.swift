//
//  UnionWithoutDuplicatesTests.swift
//  UnionWithoutDuplicatesTests
//
//  Created by Artem Kislitsyn on 11.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import UnionWithoutDuplicates

class UnionWithoutDuplicatesTests: XCTestCase {

	func testUnion() {
		//arrange
		let value1:NSString = "value1";
		let dic = NSDictionary(dictionary: ["key1" : value1])
		let dic1 = NSDictionary(dictionary: ["key1" : value1])
		let dic2 = NSDictionary(dictionary: ["key1" : "value"])
		let dic3 = NSDictionary(dictionary: ["key1" : "vae1"])
		let dic4 = NSDictionary(dictionary: ["key1" : "value1"])
		let arr:[NSDictionary] = [dic,dic1,dic2,dic3,dic4]
		let arr2 : [NSDictionary] = [dic]
		
		//act
		let arr5:[NSDictionary] = arr.unionWithoutDuplicatesWithArray(array:arr2,key:"key1")
		
		//assert
		let arrResult:[NSDictionary] = [dic,dic1,dic2,dic3,dic4]
		XCTAssertEqual(arr5,arrResult, "not equal")
		
	}
}
