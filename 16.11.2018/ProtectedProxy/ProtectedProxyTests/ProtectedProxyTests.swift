//
//  ProtectedProxyTests.swift
//  ProtectedProxyTests
//
//  Created by Artem Kislitsyn on 16.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ProtectedProxy

class ProtectedProxyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testProxy(){
		
		//arrange
		let computer = CurrentComputer()
		let podBay = "Pod Bay Doors"
		
		
		//act
		
		let result = computer.open(doors: podBay)
		
		//assert
		
		XCTAssertEqual(result,"Access Denied. I'm afraid I can't do that.")
		
	}
	
	func testAuthProxy(){
		
		//arrange
		let computer = CurrentComputer()
		let podBay = "Pod Bay Doors"
		
		
		//act
		let auth  = computer.authenticate(password: "pass")
		let result = computer.open(doors: podBay)
		
		//assert
		
		XCTAssertEqual(result,"HAL9000: Affirmative, Dave. I read you. Opened Pod Bay Doors.")
		XCTAssertEqual(auth,true)
		
	}



}
