//
//  Mediator.swift
//  Mediator
//
//  Created by Artem Kislitsyn on 08.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol Receiver {
	associatedtype MessageType
	func receive(message: MessageType) -> String?
}

protocol Sender {
	associatedtype MessageType
	associatedtype ReceiverType: Receiver
	
	var recipients: [ReceiverType] { get }
	
	func send(message: MessageType) -> [String]
}

struct Programmer: Receiver {
	let name: String
	
	init(name: String) {
		self.name = name
	}
	
	func receive(message: String) -> String? {
		print("\(name) received: \(message)")
		return "\(name) received: \(message)"
	}
}

final class MessageMediator: Sender {
	internal var recipients: [Programmer] = []
	
	func add(recipient: Programmer) {
		recipients.append(recipient)
	}
	
	func send(message: String) -> [String] {
		var messages : [String] = [String]()
		for recipient in recipients {
			messages.append(recipient.receive(message: message)!)
		}
		return messages
	}
}
