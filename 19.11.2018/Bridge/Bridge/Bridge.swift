//
//  Bridge.swift
//  Bridge
//
//  Created by Artem Kislitsyn on 19.11.2018.
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

protocol Switch {
	var appliance: Appliance {get set}
	func turnOn()
}

protocol Appliance {
	func run()
}

class RemoteControl: Switch {
	var appliance: Appliance
	
	func turnOn() {
		self.appliance.run()
	}
	
	init(appliance: Appliance) {
		self.appliance = appliance
	}
}

class TV: Appliance {
	func run() {
		print("tv turned on");
		TestLoger.sharedInstance.addLog(string: "tv turned on")
	}
}

class VacuumCleaner: Appliance {
	func run() {
		print("vacuum cleaner turned on")
		TestLoger.sharedInstance.addLog(string: "vacuum cleaner turned on")
	}
}
