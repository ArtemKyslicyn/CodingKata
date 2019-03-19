//
//  SumSeries.swift
//  SumSeries
//
//  Created by Artem Kislitsyn on 19.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func sumSeries( n:  Int) -> Double {
	var ret: Double = 0
	
	for i in 1...n {
		ret += (1 / pow(Double(i), 2))
	}
	
	return ret
}
