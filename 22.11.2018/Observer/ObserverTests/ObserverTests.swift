//
//  ObserverTests.swift
//  ObserverTests
//
//  Created by Artem Kislitsyn on 22.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Observer

class ObserverTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testObserver() {
		
		//arrange
		let observerInstance = Observer()
		let testChambers = TestChambers()
		testChambers.observer = observerInstance
		
		
		//act
		testChambers.testChamberNumber += 1
		
		//assert
		XCTAssertEqual(TestLoger.sharedInstance.logs,["Okay. Look. We both said a lot of things that you're going to regret.","Sorry about the mess. I've really let the place go since you killed me."])
		
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
