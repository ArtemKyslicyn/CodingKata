//
//  MediatorTests.swift
//  MediatorTests
//
//  Created by Artem Kislitsyn on 08.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Mediator

class MediatorTests: XCTestCase {

	func testMediator() {
		
		//arrange
		
		let messagesMediator = MessageMediator()
		
		let user0 = Programmer(name: "Linus Torvalds")
		let user1 = Programmer(name: "Avadis 'Avie' Tevanian")
		messagesMediator.add(recipient: user0)
		messagesMediator.add(recipient: user1)
		
		
		//act
		
		let messages = messagesMediator.send(message: "I'd Like to Add you to My Professional Network")
		
		//assert
		XCTAssertEqual( messages[0],"Linus Torvalds received: I'd Like to Add you to My Professional Network")
		XCTAssertEqual( messages[1],"Avadis 'Avie' Tevanian received: I'd Like to Add you to My Professional Network")
		
		
	}
	
	

}
