//
//  NumericExtension.swift
//  LCM
//
//  Created by Artem Kislitsyn on 26.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int{
	
	public func calcGCD(secondNumber:Int) -> Int {
		var firstNumber = self
		var secondNumber = secondNumber
		var common = secondNumber
		
		while secondNumber != 0 {
			common = firstNumber % secondNumber
			firstNumber = secondNumber;
			secondNumber = common;
		}
		
		return firstNumber
	}
	
	public func  calcLCM(secondNumber:Int) -> Int
	{
		return self * secondNumber  / calcGCD(secondNumber: secondNumber);
	}
}

