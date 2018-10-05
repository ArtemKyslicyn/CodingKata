//
//  OccurencesOfEachElementInArrayTests.swift
//  OccurencesOfEachElementInArrayTests
//
//  Created by Artem Kislitsyn on 05.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import OccurencesOfEachElementInArray

class OccurencesOfEachElementInArrayTests: XCTestCase {

	
	
	func testFirstOccurencyString() {
		//arrange
		let object1 = "2"
		let object2 = "3"
		let i = [object1,object1,object2,object2,object2]
		
		//act
		let result = i.cocoaImplementationOfOccurencesOfEachElementInArray()
		
		//assert
		let number = result.object(forKey: object2) as! NSNumber
		XCTAssertEqual(3, number.intValue, "not equal")
	}

}
