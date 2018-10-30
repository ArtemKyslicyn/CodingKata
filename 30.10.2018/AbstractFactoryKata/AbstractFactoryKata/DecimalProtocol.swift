//
//  DecimalProtocol.swift
//  AbstractFactoryKata
//
//  Created by Artem Kislitsyn on 30.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

public typealias NumberFactory = (String) -> Decimal

public protocol Decimal {
	func stringValue() -> String
	// factory
	static func make(string : String) -> Decimal
}
