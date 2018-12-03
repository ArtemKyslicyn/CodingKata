//
//  kthLargestTests.swift
//  kthLargestTests
//
//  Created by Artem Kislitsyn on 03.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import kthLargest

class kthLargestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testKthElement() {
        //arrange
		let a = [5, 1, 3, 2, 7, 6, 4]
		
		//act
		let result = kthLargest(a, 1)
		
		//assert
		
		XCTAssertEqual(result, 7, "not equal")
    }


}
