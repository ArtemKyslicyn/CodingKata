//
//  MementoTests.swift
//  MementoTests
//
//  Created by Artem Kislitsyn on 12.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Memento

class MementoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
		
		//arrange
		var gameState = GameState(chapter: "Black Mesa Inbound", weapon: "Crowbar")
		
		gameState.chapter = "Anomalous Materials"
		gameState.weapon = "Glock 17"
		CheckPoint.save(gameState, saveName: "gameState1")
		
		gameState.chapter = "Unforeseen Consequences"
		gameState.weapon = "MP5"
		CheckPoint.save(gameState, saveName: "gameState2")
		
		gameState.chapter = "Office Complex"
		gameState.weapon = "Crossbow"
		CheckPoint.save(gameState, saveName: "gameState3")
		
		//act
		let memento = CheckPoint.restore(saveName: "gameState1")!
		let finalState = GameState(memento: memento)
		
		
		
		//assert
		XCTAssertEqual(finalState?.chapter,"Anomalous Materials")
		XCTAssertEqual(finalState?.weapon,"Glock 17")
    }
}
