//
//  Adapter.swift
//  Adapter
//
//  Created by Artem Kislitsyn on 13.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol OlderDeathStarSuperLaserAiming {
	var angleV: NSNumber {get}
	var angleH: NSNumber {get}
}

struct DeathStarSuperlaserTarget {
	let angleHorizontal: Double
	let angleVertical: Double
	
	init(angleHorizontal:Double, angleVertical:Double) {
		self.angleHorizontal = angleHorizontal
		self.angleVertical = angleVertical
	}
}

struct OldDeathStarSuperlaserTarget : OlderDeathStarSuperLaserAiming {
	private let target : DeathStarSuperlaserTarget
	
	var angleV:NSNumber {
		return NSNumber(value: target.angleVertical)
	}
	
	var angleH:NSNumber {
		return NSNumber(value: target.angleHorizontal)
	}
	
	init(_ target:DeathStarSuperlaserTarget) {
		self.target = target
	}
}

