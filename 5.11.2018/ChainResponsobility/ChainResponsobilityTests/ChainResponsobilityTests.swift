//
//  ChainResponsobilityTests.swift
//  ChainResponsobilityTests
//
//  Created by Artem Kislitsyn on 05.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import ChainResponsobility

class ChainResponsobilityTests: XCTestCase {


    func testChainResponsobility()
	{
		//arrange
		let ten = MoneyPile(value: 10, quantity: 6, nextPile: nil)
		let twenty = MoneyPile(value: 20, quantity: 2, nextPile: ten)
		let fifty = MoneyPile(value: 50, quantity: 2, nextPile: twenty)
		let hundred = MoneyPile(value: 100, quantity: 1, nextPile: fifty)
		
		//act
		let atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)
		let tenString = atm.canWithdraw(amount: 310) // Cannot because ATM has only 300
		let twentyString = atm.canWithdraw(amount: 100) // Can withdraw - 1x100
		let fiftyString = atm.canWithdraw(amount: 165) // Cannot withdraw because ATM doesn't has bill with value of 5
		let hundredString = atm.canWithdraw(amount: 30)  // Can withdraw - 1x20, 2x10
		//assert
		
		XCTAssertEqual(tenString ,"Can withdraw: false")
		XCTAssertEqual(twentyString,"Can withdraw: true")
		XCTAssertEqual(fiftyString, "Can withdraw: false")
		XCTAssertEqual(hundredString,"Can withdraw: true")
    }


}
