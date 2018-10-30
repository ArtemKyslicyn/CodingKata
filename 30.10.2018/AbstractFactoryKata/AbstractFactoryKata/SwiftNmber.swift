//
//  SwiftNmber.swift
//  AbstractFactoryKata
//
//  Created by Artem Kislitsyn on 30.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation


struct SwiftNumber : Decimal {
	private var swiftInt: Int
	
	func stringValue() -> String { return "\(swiftInt)" }
	
	// factory
	static func make(string: String) -> Decimal {
		return SwiftNumber(swiftInt:(string as NSString).integerValue)
	}
}
