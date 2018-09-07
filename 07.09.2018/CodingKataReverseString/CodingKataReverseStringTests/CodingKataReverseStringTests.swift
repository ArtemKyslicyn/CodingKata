//
//  CodingKataReverseStringTests.swift
//  CodingKataReverseStringTests
//
//  Created by Artem Kislitsyn on 07.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import CodingKataReverseString

class CodingKataReverseStringTests: XCTestCase {
    
    func testStringOperations()
	{
		//arrange
		let stringOperations = StringObject()
		
		//act
		let string = stringOperations.reverseStringSimple(string: "123")
		//assert
		XCTAssertEqual(string, "321", "not equal")
			
    }
    
	
    
}
