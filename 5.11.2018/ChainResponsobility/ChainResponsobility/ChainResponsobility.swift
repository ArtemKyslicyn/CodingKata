//
//  ChainResponsobility.swift
//  ChainResponsobility
//
//  Created by Artem Kislitsyn on 05.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

final class MoneyPile {
	
	let value: Int
	var quantity: Int
	var nextPile: MoneyPile?
	
	init(value: Int, quantity: Int, nextPile: MoneyPile?) {
		self.value = value
		self.quantity = quantity
		self.nextPile = nextPile
	}
	
	func canWithdraw(amount: Int) -> Bool {
		
		var amount = amount
		
		func canTakeSomeBill(want: Int) -> Bool {
			return (want / self.value) > 0
		}
		
		var quantity = self.quantity
		
		while canTakeSomeBill(want: amount) {
			
			if quantity == 0 {
				break
			}
			
			amount -= self.value
			quantity -= 1
		}
		
		guard amount > 0 else {
			return true
		}
		
		if let next = self.nextPile {
			return next.canWithdraw(amount: amount)
		}
		
		return false
	}
}

final class ATM {
	private var hundred: MoneyPile
	private var fifty: MoneyPile
	private var twenty: MoneyPile
	private var ten: MoneyPile
	
	private var startPile: MoneyPile {
		return self.hundred
	}
	
	init(hundred: MoneyPile,
		 fifty: MoneyPile,
		 twenty: MoneyPile,
		 ten: MoneyPile) {
		
		self.hundred = hundred
		self.fifty = fifty
		self.twenty = twenty
		self.ten = ten
	}
	
	func canWithdraw(amount: Int) -> String {
		return "Can withdraw: \(self.startPile.canWithdraw(amount: amount))"
	}
}
