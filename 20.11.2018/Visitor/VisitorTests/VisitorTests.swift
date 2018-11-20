//
//  VisitorTests.swift
//  VisitorTests
//
//  Created by Artem Kislitsyn on 20.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Visitor

class VisitorTests: XCTestCase {


    func testVisitor() {
		
		//arrange
		let planets: [Planet] = [PlanetAlderaan(), PlanetCoruscant(), PlanetTatooine(), MoonJedah()]
		
		//act
		let names = planets.map { (planet: Planet) -> String in
			let visitor = NameVisitor()
			planet.accept(visitor: visitor)
			return visitor.name
		}
		
		//assert
		XCTAssertEqual(names,["Alderaan", "Coruscant", "Tatooine", "Jedah"])
		
    }

	

}
