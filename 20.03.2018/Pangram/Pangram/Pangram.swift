//
//  Pangram.swift
//  Pangram
//
//  Created by Artem Kislitsyn on 20.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation


func isPangram(str: String) -> Bool {
	let (char, alph) = (Set(str), "abcdefghijklmnopqrstuvwxyz")
	return !alph.contains {!char.contains($0)}
}

