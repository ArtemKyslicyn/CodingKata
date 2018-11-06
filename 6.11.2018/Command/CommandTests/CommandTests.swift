//
//  CommandTests.swift
//  CommandTests
//
//  Created by Artem Kislitsyn on 06.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Command

class CommandTests: XCTestCase {



    func testComand() {
		
			//arrange
		    let podBayDoors = "Pod Bay Doors"
		    let doorModule = DoorsOperations(doors:podBayDoors)
			
			//act
			let openState = doorModule.open()
			let closeState = doorModule.close()
			//assert
			
			XCTAssertEqual(openState ,"Opened Pod Bay Doors")
			XCTAssertEqual(closeState,"Closed Pod Bay Doors")
		
	
    }

}
