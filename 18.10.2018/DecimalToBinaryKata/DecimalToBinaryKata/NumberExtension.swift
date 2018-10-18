//
//  NumberExtension.swift
//  DecimalToBinaryKata
//
//  Created by Artem Kislitsyn on 18.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{

	public func binaryNumberFromDecimal() -> Int {
		var quotient = self;
		var binaryNumber:[Int] = [Int](repeating: 0, count: 100)
		var i = 0;
		var string:String = ""
		
		while (quotient != 0) {
			binaryNumber[i] = quotient % 2;
			i+=1
			quotient          = quotient / 2;
		}
		
		for j in (0...i - 1).reversed(){
			string.append(String(binaryNumber[j]))
		}
		
		return Int(string) ?? -1;
		
	}
	
}

