//
//  NexstepNumber.swift
//  AbstractFactoryKata
//
//  Created by Artem Kislitsyn on 30.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

struct NextStepNumber: Decimal {
	private var nextStepNumber: NSNumber
	
	func stringValue() -> String { return nextStepNumber.stringValue }
	
	// factory
	static func make(string: String) -> Decimal {
		return NextStepNumber(nextStepNumber: NSNumber(value: (string as NSString).longLongValue))
	}
	
}
