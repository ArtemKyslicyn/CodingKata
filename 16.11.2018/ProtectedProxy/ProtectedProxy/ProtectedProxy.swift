//
//  ProtectedProxy.swift
//  ProtectedProxy
//
//  Created by Artem Kislitsyn on 16.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol DoorOperator {
	func open(doors: String) -> String
}

class HAL9000 : DoorOperator {
	func open(doors: String) -> String {
		return ("HAL9000: Affirmative, Dave. I read you. Opened \(doors).")
	}
}

class CurrentComputer : DoorOperator {
	private var computer: HAL9000!
	
	func authenticate(password: String) -> Bool {
		
		guard password == "pass" else {
			return false;
		}
		
		computer = HAL9000()
		
		return true
	}
	
	func open(doors: String) -> String {
		
		guard computer != nil else {
			return "Access Denied. I'm afraid I can't do that."
		}
		
		return computer.open(doors: doors)
	}
}
