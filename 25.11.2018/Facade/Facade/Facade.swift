//
//  Facade.swift
//  Facade
//
//  Created by Artem Kislitsyn on 25.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

enum Eternal {
	
	static func set(_ object: Any, forKey defaultName: String) {
		let defaults: UserDefaults = UserDefaults.standard
		defaults.set(object, forKey:defaultName)
		defaults.synchronize()
	}
	
	static func object(forKey key: String) -> AnyObject! {
		let defaults: UserDefaults = UserDefaults.standard
		return defaults.object(forKey: key) as AnyObject!
	}
	
}
