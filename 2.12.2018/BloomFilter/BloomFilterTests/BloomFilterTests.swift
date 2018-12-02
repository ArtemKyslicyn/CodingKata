//
//  BloomFilterTests.swift
//  BloomFilterTests
//
//  Created by Artem Kislitsyn on 03.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import BloomFilter

func djb2(_ x: String) -> Int {
	var hash = 5381
	
	for char in x {
		hash = ((hash << 5) &+ hash) &+ char.hashValue
	}
	
	return Int(hash)
}

func sdbm(_ x: String) -> Int {
	var hash = 0
	
	for char in x {
		hash = char.hashValue &+ (hash << 6) &+ (hash << 16) &- hash
	}
	
	return Int(hash)
}

class BloomFilterTests: XCTestCase {

	func testSingleHashFunction() {
		let bloom = BloomFilter<String>(hashFunctions: [djb2])
		
		bloom.insert("Hello world!")
		
		let result_good = bloom.query("Hello world!")
		let result_bad = bloom.query("Hello world")
		
		XCTAssertTrue(result_good)
		XCTAssertFalse(result_bad)
	}
	
	func testEmptyFilter() {
		//arrange
		let bloom = BloomFilter<String>(hashFunctions: [djb2])
		//act
		let empty = bloom.isEmpty()
		
		//assert
		XCTAssertTrue(empty)
	}
	
	func testMultipleHashFunctions() {
		//arrange
		let bloom = BloomFilter<String>(hashFunctions: [djb2, sdbm])
		
		//act
		bloom.insert("Hello world!")
		let result_good = bloom.query("Hello world!")
		let result_bad = bloom.query("Hello world")
		
		//aasert
		XCTAssertTrue(result_good)
		XCTAssertFalse(result_bad)
	}
	
	func testFalsePositive() {
		
		//arrange
		let bloom = BloomFilter<String>(size: 5, hashFunctions: [djb2, sdbm])
		
		bloom.insert(["hello", "elloh", "llohe", "lohel", "ohell"])
		
		//act
		let query = bloom.query("This wasn't inserted!")
		
		//asset
		XCTAssertTrue(query)
	}
	

}
