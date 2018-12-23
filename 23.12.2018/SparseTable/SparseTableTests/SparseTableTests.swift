//
//  SparseTableTests.swift
//  SparseTableTests
//
//  Created by Artem Kislitsyn on 23.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import SparseTable

class SparseTableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSparseTable() {
		//arrange
		let intArray = [1, -11, -7, 3, 2, 4]
		
		//act
		let minIntTable = SparseTable<Int>(array: intArray, function: min, defaultT: Int.max)
		let result = minIntTable.query(from: 0, until: 6)
		
		//assert
		assert(result == -11, "result")
    }


}
