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
		TestLoger.sharedInstance.clear()
    }

    override func tearDown() {
		TestLoger.sharedInstance.clear()
    }

    func testComposite() {
		
		//arrange
		let whiteboard = Whiteboard(Circle(), Square())
	
		//act
		whiteboard.draw(fillColor: "Red")
		
	    //assert
		XCTAssertEqual(TestLoger.sharedInstance.logs,["Drawing a circle with color Red","Drawing a Square with color Red"])
		
    }

	

}
