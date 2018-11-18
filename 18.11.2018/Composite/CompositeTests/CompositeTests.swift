//
//  CompositeTests.swift
//  CompositeTests
//
//  Created by Artem Kislitsyn on 18.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Composite

class CompositeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testComposite() {
		
		//arrange
		let whiteboard = Whiteboard(Circle(), Square())
	
		//act
		whiteboard.draw(fillColor: "Red")
		
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
