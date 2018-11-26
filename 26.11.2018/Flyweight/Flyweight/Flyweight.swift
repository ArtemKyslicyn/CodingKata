//
//  Flyweight.swift
//  Flyweight
//
//  Created by Artem Kislitsyn on 26.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

//ONLY FOR TESTING
class TestLoger {
	public var logs = [String]()
	static let sharedInstance = TestLoger()
	
	public func addLog(string:String)  {
		logs.append(string)
	}
	public func clear()  {
		logs.removeAll()
	}
	
	private init() {
		// Private initialization to ensure just one instance is created.
	}
}

// Instances of CoffeeFlavour will be the Flyweights
final class SpecialityCoffee: CustomStringConvertible {
	var origin: String
	var description: String {
		get {
			return origin
		}
	}
	
	init(origin: String) {
		self.origin = origin
	}
}

// Menu acts as a factory and cache for CoffeeFlavour flyweight objects
final class Menu {
	private var coffeeAvailable: [String: SpecialityCoffee] = [:]
	
	func lookup(origin: String) -> SpecialityCoffee? {
		if coffeeAvailable.index(forKey: origin) == nil {
			coffeeAvailable[origin] = SpecialityCoffee(origin: origin)
		}
		
		return coffeeAvailable[origin]
	}
}

final class CoffeeShop {
	private var orders: [Int: SpecialityCoffee] = [:]
	private var menu = Menu()
	
	func takeOrder(origin: String, table: Int) {
		orders[table] = menu.lookup(origin: origin)
	}
	
	func serve() {
		for (table, origin) in orders {
			TestLoger.sharedInstance.addLog(string: "Serving \(origin) to table \(table)")
			print("Serving \(origin) to table \(table)")
		}
	}
}
