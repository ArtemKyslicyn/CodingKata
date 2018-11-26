//
//  FlyweightTests.swift
//  FlyweightTests
//
//  Created by Artem Kislitsyn on 26.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Flyweight

class FlyweightTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testFlyweight() {
		
		//arrange
		let coffeeShop = CoffeeShop()
		
		coffeeShop.takeOrder(origin: "Yirgacheffe, Ethiopia", table: 1)
		coffeeShop.takeOrder(origin: "Buziraguhindwa, Burundi", table: 3)
		
		
		//act
		coffeeShop.serve()
		
		//assert
		XCTAssertEqual(TestLoger.sharedInstance.logs,["Serving Yirgacheffe, Ethiopia to table 1", "Serving Buziraguhindwa, Burundi to table 3"])
		
	}
	
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
