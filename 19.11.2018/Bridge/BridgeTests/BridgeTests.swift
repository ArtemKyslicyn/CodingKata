//
//  BridgeTests.swift
//  BridgeTests
//
//  Created by Artem Kislitsyn on 19.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Bridge

class BridgeTests: XCTestCase {

	override func setUp() {
		TestLoger.sharedInstance.clear()
	}
	
	override func tearDown() {
		TestLoger.sharedInstance.clear()
	}

	func testBridge() {
		
		//arrange
		let tvRemoteControl = RemoteControl(appliance: TV())
		let fancyVacuumCleanerRemoteControl = RemoteControl(appliance: VacuumCleaner())
		
		//act
	     fancyVacuumCleanerRemoteControl.turnOn()
		 tvRemoteControl.turnOn()
		
		//assert
		XCTAssertEqual(TestLoger.sharedInstance.logs,["vacuum cleaner turned on", "tv turned on"])
		
	}


}
