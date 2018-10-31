//
//  Builder.swift
//  Builder
//
//  Created by Artem Kislitsyn on 31.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

class FlightBuilder {
	
	var x: Double?
	var y: Double?
	var z: Double?
	
	typealias BuilderClosure = (FlightBuilder) -> ()
	
	init(buildClosure: BuilderClosure) {
		buildClosure(self)
	}
}

struct Flight : CustomStringConvertible {
	
	let x: Double
	let y: Double
	let z: Double
	
	init?(builder: FlightBuilder) {
		
		if let x = builder.x, let y = builder.y, let z = builder.z {
			self.x = x
			self.y = y
			self.z = z
		} else {
			return nil
		}
	}
	
	var description:String {
		return "Flght at (x:\(x) y:\(y) z:\(z))"
	}
}
