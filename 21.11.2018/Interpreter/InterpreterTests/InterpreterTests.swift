//
//  InterpreterTests.swift
//  InterpreterTests
//
//  Created by Artem Kislitsyn on 21.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import XCTest
@testable import Interpreter

class InterpreterTests: XCTestCase {


    func interpreterTest() {
		//arrange
		let context = IntegerContext()
		
		let a = IntegerVariableExpression(name: "A")
		let b = IntegerVariableExpression(name: "B")
		let c = IntegerVariableExpression(name: "C")
		
		let expression = AddExpression(op1: a, op2: AddExpression(op1: b, op2: c)) // a + (b + c)
		
		context.assign(expression: a, value: 2)
		context.assign(expression: b, value: 1)
		context.assign(expression: c, value: 3)

		
		//act
		let result = expression.evaluate(context)
		
		//assert
		XCTAssertEqual(result,6)
    }

	

}
