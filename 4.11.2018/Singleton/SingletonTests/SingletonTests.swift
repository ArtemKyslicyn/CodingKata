//
//  SingletonTests.swift
//  SingletonTests
//
//  Created by Artem Kislitsyn on 04.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Singleton

class SingletonTests: XCTestCase {

    func testSingleton() {
		//arrange
		let singleton = Singleton.sharedInstance
		
		//act
		let singleton2 = Singleton.sharedInstance
		//assert
		XCTAssertTrue(singleton === singleton2)
    }


}
