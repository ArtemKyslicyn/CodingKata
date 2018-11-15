//
//  VirtualProxyTests.swift
//  VirtualProxyTests
//
//  Created by Artem Kislitsyn on 15.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import VirtualProxy

class VirtualProxyTests: XCTestCase {

	
    func testVirtualProxy(){
		
		//arrange
		
		let humanInterface = HEVSuitHumanInterface()
		
		//act
		
		let administerMorphine = humanInterface.administerMorphine()
		
		//assert
		
		XCTAssertEqual(administerMorphine,"Morphine administered.")
		
    }

	
	

}
