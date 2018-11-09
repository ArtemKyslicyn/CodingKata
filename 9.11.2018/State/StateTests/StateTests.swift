//
//  StateTests.swift
//  StateTests
//
//  Created by Artem Kislitsyn on 09.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import State

class StateTests: XCTestCase {

	func testStateAutorized() {
		
		//arrange
		
		let userContext = Context()
		
		//act
		userContext.changeStateToAuthorized(userId: "admin")
		
		//assert

		XCTAssertEqual(userContext.isAuthorized,true)
		XCTAssertEqual(userContext.userId,"admin")
		
	}
	
	func testStateUnautorized() {
		
		//arrange
		
		let userContext = Context()
		
		//act
		userContext.changeStateToAuthorized(userId: "admin")
		userContext.changeStateToUnauthorized()
		
		//assert
		
		XCTAssertEqual(userContext.isAuthorized,false)
		XCTAssertEqual(userContext.userId,nil)
		
		
	}

}
