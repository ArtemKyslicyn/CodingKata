//
//  IntersectionsLinesTests.swift
//  IntersectionsLinesTests
//
//  Created by Artem Kislitsyn on 15.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import XCTest
@testable import IntersectionsLines

class IntersectionsLinesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIntersectionsLines() {
		//arrange
		let l1 = Line(p1: Point(x: 4.0, y: 0.0), p2: Point(x: 6.0, y: 10.0))
		let l2 = Line(p1: Point(x: 0.0, y: 3.0), p2: Point(x: 10.0, y: 7.0))
		
		//act
		let intersectionPoint = l1.intersection(of: l2)!
		
		//assert
		
		XCTAssertEqual(intersectionPoint.x,5, "not equal")
		XCTAssertEqual(intersectionPoint.y,5, "not equal")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
