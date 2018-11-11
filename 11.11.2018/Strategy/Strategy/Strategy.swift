//
//  Strategy.swift
//  Strategy
//
//  Created by Artem Kislitsyn on 11.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol PrintStrategy {
	func print(_ string: String) -> String
}

final class Printer {
	
	private let strategy: PrintStrategy
	
	func print(_ string: String) -> String {
		return self.strategy.print(string)
	}
	
	init(strategy: PrintStrategy) {
		self.strategy = strategy
	}
}

final class UpperCaseStrategy: PrintStrategy {
	func print(_ string: String) -> String {
		return string.uppercased()
	}
}

final class LowerCaseStrategy: PrintStrategy {
	func print(_ string:String) -> String {
		return string.lowercased()
	}
}
