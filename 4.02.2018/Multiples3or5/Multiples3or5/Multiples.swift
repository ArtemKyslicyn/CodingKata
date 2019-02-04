//
//  Multiples.swift
//  Multiples3or5
//
//  Created by Artem Kislitsyn on 04.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func multiples(count:Int) -> Int {
	
	var mul :Int = 0
	
	for index in 1..<count {
		if index % 5 == 0 || index % 3 == 0
		{
			mul+=index;
		}
	}
	
	return mul;
}
