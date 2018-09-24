//
//  CountWordsKataTests.swift
//  CountWordsKataTests
//
//  Created by Artem Kislitsyn on 24.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import CountWordsKata

class CountWordsKataTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
	func testCountWords() {
		//arrange
		let str = "Bar baaar Baaaaaaaaaaaaar"
		
		//act
		let countWords = str.countWords()
		
		//assert
		XCTAssertEqual(3,countWords , "not equal")
		
	}
	
	
	func testCountWords2() {
		//arrange
		let str = "Bar "
		
		//act
		let countWords = str.countWords()
		
		//assert
		XCTAssertEqual(2,countWords , "not equal")
		
	}
	
	
	func testRealCountWords() {
		//arrange
		let str = "Bar "
		
		//act
		let countWords = str.realCoutnWords()
		
		//assert
		XCTAssertEqual(2,countWords , "not equal")
		
	}
	
	func testWordCount() {
		//arrange
		let str = "Bar "
		
		//act
		let countWords = str.split(separator: " ").count
		
		//assert
		XCTAssertEqual(1,countWords , "not equal")
		
	}
    
}
