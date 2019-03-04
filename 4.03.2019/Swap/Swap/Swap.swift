//
//  Swap.swift
//  Swap
//
//  Created by Artem Kislitsyn on 04.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func swap<T>( a: inout T, b: inout T) {
	(a, b) = (b, a)
}
