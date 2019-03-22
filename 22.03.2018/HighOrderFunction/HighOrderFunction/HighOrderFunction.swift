//
//  HighOrderFunction.swift
//  HighOrderFunction
//
//  Created by Artem Kislitsyn on 22.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func func3<T>(f: (Int,Int)->T) -> T {
	return f(1, 2)
}

