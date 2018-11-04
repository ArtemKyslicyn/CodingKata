//
//  Singleton.swift
//  Singleton
//
//  Created by Artem Kislitsyn on 04.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

class Singleton {
	static let sharedInstance = Singleton()
	
	private init() {
		// Private initialization to ensure just one instance is created.
	}
}
