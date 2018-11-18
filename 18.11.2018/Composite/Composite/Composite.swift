//
//  Composite.swift
//  Composite
//
//  Created by Artem Kislitsyn on 18.11.2018.
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
protocol Shape {
	func draw(fillColor: String)
}

final class Square : Shape {
	func draw(fillColor: String) {
		print("Drawing a Square with color \(fillColor)")
		TestLoger.sharedInstance.addLog(string: "Drawing a Square with color \(fillColor)")
	}
}

final class Circle : Shape {
	func draw(fillColor: String) {
		print("Drawing a circle with color \(fillColor)")
		TestLoger.sharedInstance.addLog(string: "Drawing a circle with color \(fillColor)")
	}
}

final class Whiteboard : Shape {
	lazy var shapes = [Shape]()
	
	init(_ shapes:Shape...) {
		self.shapes = shapes
	}
	
	func draw(fillColor: String) {
		for shape in self.shapes {
			shape.draw(fillColor: fillColor)
		}
	}
}
