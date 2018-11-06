//
//  Command.swift
//  Command
//
//  Created by Artem Kislitsyn on 06.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol DoorCommand {
	func execute() -> String
}

class OpenCommand : DoorCommand {
	let doors:String
	
	required init(doors: String) {
		self.doors = doors
	}
	
	func execute() -> String {
		return "Opened \(doors)"
	}
}

class CloseCommand : DoorCommand {
	let doors:String
	
	required init(doors: String) {
		self.doors = doors
	}
	
	func execute() -> String {
		return "Closed \(doors)"
	}
}

class DoorsOperations {
	let openCommand: DoorCommand
	let closeCommand: DoorCommand
	
	init(doors: String) {
		self.openCommand = OpenCommand(doors:doors)
		self.closeCommand = CloseCommand(doors:doors)
	}
	
	func close() -> String {
		return closeCommand.execute()
	}
	
	func open() -> String {
		return openCommand.execute()
	}
}
