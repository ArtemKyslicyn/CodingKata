//
//  ArrayFiltation.swift
//  ArrayFilitration
//
//  Created by Artem Kislitsyn on 28.02.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func zeroReindex(in array:[Int]) -> [Int]
{
	var result = [Int]()
	var zeros = [Int]()
	for i in array {
		if i == 0 {
			result.append(i)
		}else{
			zeros.append(i)
		}
	}
	
	return zeros + result  ;
}
