//
//  PalindromKataTests.swift
//  PalindromKataTests
//
//  Created by Artem Kislitsyn on 17.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import PalindromKata

class PalindromKataTests: XCTestCase {

    
    func testIsNotPalindrom()
	{
		//arrange
		 let s = "fdfdfsfsf"
		
		//act
		let isPalindrom = s.isPalindrom()
		
		//assert
		XCTAssertEqual(false, isPalindrom, "not equal")
		
    }
	
	func testIsPalindrom()
	{
		//arrange
		let s = "Eve"
		
		//act
		let isPalindrom = s.isPalindrom()
		
		//assert
		XCTAssertEqual(true, isPalindrom, "not equal")
		
	}
	
    
}
