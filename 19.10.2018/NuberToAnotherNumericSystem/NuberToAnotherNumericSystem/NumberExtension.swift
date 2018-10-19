//
//  NumberExtension.swift
//  NuberToAnotherNumericSystem
//
//  Created by Artem Kislitsyn on 19.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	
	public func numberWithBase(base:Int) -> String {
		let baseDigits:[String] =  [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F" ];
		var numberToConvert = self;
		var binaryNumber:[Int] = [Int](repeating: 0, count: 100)
		var i = 0, number = 0;
		var string:String = ""
		
		while (numberToConvert != 0) {
			binaryNumber[i] = numberToConvert % base;
			i+=1
			numberToConvert          = numberToConvert / base;
		}
		
		for j in (0...i - 1).reversed(){
			number = binaryNumber[j]
			string.append(String(baseDigits[number]))
		}
		
		return string
		
	}
	
}

//(id)convertedNumberWithBase:(int)base
//{
//	if (base != 2 && base != 8 && base != 10 && base != 12 && base != 16) {
//		NSLog(@"Bad base - base must be 2, 8, 10, 12 or 16 only");
//		base = 10;
//	}
//
//	const char baseDigits[16] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
//	long int numberToConvert = [self longValue];
//	int convertedNumber[64];
//	int nextDigit = 0, index = 0;
//	id resultOfConvertion = nil;
//	NSMutableString *resultString = [@"" mutableCopy];
//
//
//	do {
//		convertedNumber[index] = numberToConvert % base;
//		++index;
//		numberToConvert = numberToConvert / base;
//	}
//		while (numberToConvert != 0);
//
//	for (--index; index >= 0; --index) {
//		nextDigit = convertedNumber[index];
//		[resultString appendString:[NSString stringWithFormat:@"%c", baseDigits[nextDigit]]];
//	}
//
//	if (base == 2 || base == 8 || base == 10) {
//		NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
//		NSNumber *myNumber   = [f numberFromString:resultString];
//		resultOfConvertion   = myNumber;
//	}
//	else {
//		resultOfConvertion = [resultString copy];
//	}
//
//	return resultOfConvertion;
//}
