//
//  Prototype.swift
//  Prototype
//
//  Created by Artem Kislitsyn on 02.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

class ChungasRevengeDisplay {
	var name: String?
	let font: String
	
	init(font: String) {
		self.font = font
	}
	
	func clone() -> ChungasRevengeDisplay {
		return ChungasRevengeDisplay(font:self.font)
	}
}
