//
//  NumberFactory.swift
//  AbstractFactoryKata
//
//  Created by Artem Kislitsyn on 30.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

enum NumberType {
	case nextStep, swift
}

enum NumberValueFactory {
	static func factory(for type: NumberType) -> NumberFactory {
		switch type {
		case .nextStep:
			return NextStepNumber.make
		case .swift:
			return SwiftNumber.make
		}
	}
}
