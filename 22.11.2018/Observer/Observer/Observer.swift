//
//  Observer.swift
//  Observer
//
//  Created by Artem Kislitsyn on 22.11.2018.
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

protocol PropertyObserver : class {
	func willChange(propertyName: String, newPropertyValue: Any?)
	func didChange(propertyName: String, oldPropertyValue: Any?)
}

final class TestChambers {
	
	weak var observer:PropertyObserver?
	
	private let testChamberNumberName = "testChamberNumber"
	
	var testChamberNumber: Int = 0 {
		willSet(newValue) {
			observer?.willChange(propertyName: testChamberNumberName, newPropertyValue: newValue)
		}
		didSet {
			observer?.didChange(propertyName: testChamberNumberName, oldPropertyValue: oldValue)
		}
	}
}

final class Observer : PropertyObserver {
	func willChange(propertyName: String, newPropertyValue: Any?) {
		if newPropertyValue as? Int == 1 {
			print("Okay. Look. We both said a lot of things that you're going to regret.")
			TestLoger.sharedInstance.addLog(string: "Okay. Look. We both said a lot of things that you're going to regret.")
		}
	}
	
	func didChange(propertyName: String, oldPropertyValue: Any?) {
		if oldPropertyValue as? Int == 0 {
			print("Sorry about the mess. I've really let the place go since you killed me.")
			TestLoger.sharedInstance.addLog(string: ("Sorry about the mess. I've really let the place go since you killed me."))
		}
	}
}