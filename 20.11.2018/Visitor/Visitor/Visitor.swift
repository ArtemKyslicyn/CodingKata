//
//  Visitor.swift
//  Visitor
//
//  Created by Artem Kislitsyn on 20.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol PlanetVisitor {
	func visit(planet: PlanetAlderaan)
	func visit(planet: PlanetCoruscant)
	func visit(planet: PlanetTatooine)
	func visit(planet: MoonJedah)
}

protocol Planet {
	func accept(visitor: PlanetVisitor)
}

class MoonJedah: Planet {
	func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}

class PlanetAlderaan: Planet {
	func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}

class PlanetCoruscant: Planet {
	func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}

class PlanetTatooine: Planet {
	func accept(visitor: PlanetVisitor) { visitor.visit(planet: self) }
}



class NameVisitor: PlanetVisitor {
	var name = ""
	
	func visit(planet: PlanetAlderaan)  { name = "Alderaan" }
	func visit(planet: PlanetCoruscant) { name = "Coruscant" }
	func visit(planet: PlanetTatooine)  { name = "Tatooine" }
	func visit(planet: MoonJedah)     	{ name = "Jedah" }
}
