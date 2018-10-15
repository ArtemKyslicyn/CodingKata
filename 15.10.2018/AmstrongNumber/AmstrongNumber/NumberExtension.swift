//
//  NumberExtension.swift
//  AmstrongNumber
//
//  Created by Artem Kislitsyn on 15.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Int
{
	 public func isAmstrongNumber() -> Bool {
		
		var givenNumber = self
		
		var s = 0, m = givenNumber, r = 0;
		
		repeat {
			r           = givenNumber % 10;
			givenNumber = givenNumber / 10;
			s           = s + r * r * r;
		}
			while (givenNumber != 0);
		
		return (s == m) ? true : false;
	}
	
}

