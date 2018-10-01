//
//  NumberExtension.swift
//  PrimeKata
//
//  Created by Artem Kislitsyn on 01.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int{
	
	public func isPrime() -> Bool
	{
		let given =  self
		
		if given == 0 || given == 1 {
			return false
		}
		
		for i in 2...Int(sqrt(Double(given))) {
			if given % i == 0 {
				return false;
			}
		}
		return true
		
	}
	
}

//- (BOOL)isPrime
//	{
//		NSUInteger givenNumber = [self unsignedIntegerValue];
//
//		if (givenNumber == 1 || givenNumber == 0) {
//			return NO;
//		}
//
//		for (int i = 2; i <= (int)sqrt(givenNumber); i++) {
//			if (givenNumber % i == 0) {
//				return NO;
//			}
//		}
//
//		return YES;
//}
