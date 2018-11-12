//
//  Memento.swift
//  Memento
//
//  Created by Artem Kislitsyn on 12.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

typealias Memento = NSDictionary

protocol MementoConvertible {
	var memento: Memento { get }
	init?(memento: Memento)
}

struct GameState: MementoConvertible {
	
	private enum Keys {
		static let chapter = "com.valve.halflife.chapter"
		static let weapon = "com.valve.halflife.weapon"
	}
	
	var chapter: String
	var weapon: String
	
	init(chapter: String, weapon: String) {
		self.chapter = chapter
		self.weapon = weapon
	}
	
	init?(memento: Memento) {
		guard let mementoChapter = memento[Keys.chapter] as? String,
			let mementoWeapon = memento[Keys.weapon] as? String else {
				return nil
		}
		
		chapter = mementoChapter
		weapon = mementoWeapon
	}
	
	var memento: Memento {
		return [ Keys.chapter: chapter, Keys.weapon: weapon ]
	}
}

enum CheckPoint {
	static func save(_ state: MementoConvertible, saveName: String) {
		let defaults = UserDefaults.standard
		defaults.set(state.memento, forKey: saveName)
		defaults.synchronize()
	}
	
	static func restore(saveName: String) -> Memento? {
		let defaults = UserDefaults.standard
		
		return defaults.object(forKey: saveName) as? Memento
	}
}
