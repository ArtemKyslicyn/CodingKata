//
//  KataHashTableTests.swift
//  KataHashTableTests
//
//  Created by Artem Kislitsyn on 08.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import KataHashTable

class KataHashTableTests: XCTestCase {
    

    
    func testHashtable() {
		
		//arrange
		let hashTable  = HashMap()
		
		//act
		hashTable.putKey(key: 12,value: 13)
		//assert
		XCTAssertEqual(13,hashTable.getKey(key: 12), "not equal")
		
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
	
    
}
