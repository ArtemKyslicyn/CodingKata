//
//  Decorator.swift
//  Decorator
//
//  Created by Artem Kislitsyn on 14.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol Coffee {
	func getCost() -> Double
	func getIngredients() -> String
}

class SimpleCoffee: Coffee {
	func getCost() -> Double {
		return 1.0
	}
	
	func getIngredients() -> String {
		return "Coffee"
	}
}

class CoffeeDecorator: Coffee {
	private let decoratedCoffee: Coffee
	fileprivate let ingredientSeparator: String = ", "
	
	required init(decoratedCoffee: Coffee) {
		self.decoratedCoffee = decoratedCoffee
	}
	
	func getCost() -> Double {
		return decoratedCoffee.getCost()
	}
	
	func getIngredients() -> String {
		return decoratedCoffee.getIngredients()
	}
}

final class Milk: CoffeeDecorator {
	required init(decoratedCoffee: Coffee) {
		super.init(decoratedCoffee: decoratedCoffee)
	}
	
	override func getCost() -> Double {
		return super.getCost() + 0.5
	}
	
	override func getIngredients() -> String {
		return super.getIngredients() + ingredientSeparator + "Milk"
	}
}

final class WhipCoffee: CoffeeDecorator {
	required init(decoratedCoffee: Coffee) {
		super.init(decoratedCoffee: decoratedCoffee)
	}
	
	override func getCost() -> Double {
		return super.getCost() + 0.7
	}
	
	override func getIngredients() -> String {
		return super.getIngredients() + ingredientSeparator + "Whip"
	}
}
