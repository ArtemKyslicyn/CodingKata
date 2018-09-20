//
//  IndexOfMaximumElementKataTests.swift
//  IndexOfMaximumElementKataTests
//
//  Created by Artem Kislitsyn on 20.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import IndexOfMaximumElementKata

class IndexOfMaximumElementKataTests: XCTestCase {
    

    func testFindMaximumElementIndex() {
		//arrange
		let arr = [10,9,3,4,5,6,7,8,1,22]
		
		//act
		let index = arr.indexOfMaximumElement()
		
		//assert
		XCTAssertEqual(9,index , "not equal")
		
    }
    
}
