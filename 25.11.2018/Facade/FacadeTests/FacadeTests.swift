//
//  FacadeTests.swift
//  FacadeTests
//
//  Created by Artem Kislitsyn on 25.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Facade

class FacadeTests: XCTestCase {

	
    func tesFacade() {
		
		//arrange
		Eternal.set("Disconnect me. I’d rather be nothing", forKey:"Bishop")
		
		
		//act
		let result:String? = Eternal.object(forKey: "Bishop") as? String
		
		
		//assert
		XCTAssertEqual(result,"Disconnect me. I’d rather be nothing")
    }

	

}
