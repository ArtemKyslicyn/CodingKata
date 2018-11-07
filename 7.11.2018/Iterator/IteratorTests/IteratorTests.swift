//
//  IteratorTests.swift
//  IteratorTests
//
//  Created by Artem Kislitsyn on 07.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Iterator

class IteratorTests: XCTestCase {

	func testComand() {
		
		//arrange
		let greatNovellas = Novellas(novellas: [Novella(name: "The Mist")] )
		
		//act
		
		
		//assert
		
		for novella in greatNovellas {
			XCTAssertEqual(novella.name ,"The Mist")
		}
		

	}

}
