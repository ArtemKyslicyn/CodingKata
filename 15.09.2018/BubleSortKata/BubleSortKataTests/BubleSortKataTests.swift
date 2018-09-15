//
//  BubleSortKataTests.swift
//  BubleSortKataTests
//
//  Created by Artem Kislitsyn on 15.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import BubleSortKata

class BubleSortKataTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testBubleSort() {
		
		//arrange
		var arr = [10,9,3,4,5,6,7,8,1,2]
		
		//act
		 arr.bubleSort()
		
		//assert
		XCTAssertEqual(arr, [1,2,3,4,5,6,7,8,9,10], "not equal")

    }
    

    
}
