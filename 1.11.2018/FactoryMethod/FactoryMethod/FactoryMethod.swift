//
//  FactoryMethod.swift
//  FactoryMethod
//
//  Created by Artem Kislitsyn on 01.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

protocol Currency {
	func symbol() -> String
	func code() -> String
}

class Euro : Currency {
	func symbol() -> String {
		return "€"
	}
	
	func code() -> String {
		return "EUR"
	}
}

class UnitedStatesDolar : Currency {
	func symbol() -> String {
		return "$"
	}
	
	func code() -> String {
		return "USD"
	}
}

enum Country {
	case unitedStates, spain, uk, greece
}

enum CurrencyFactory {
	static func currency(for country:Country) -> Currency? {
		
		switch country {
		case .spain, .greece :
			return Euro()
		case .unitedStates :
			return UnitedStatesDolar()
		default:
			return nil
		}
		
	}
}
