//
//  ABCProblem.swift
//  ABCProblem
//
//  Created by Artem Kislitsyn on 11.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

func Blockable(str: String) -> Bool {
	
	var blocks = [
		"BO", "XK", "DQ", "CP", "NA", "GT", "RE", "TG", "QD", "FS",
		"JW", "HU", "VI", "AN", "OB", "ER", "FS", "LY", "PC", "ZM" ]
	
	let strUp = str.uppercased()
	var final = ""
	
	for char: Character in strUp {
		var CharString: String = ""; CharString.append(char)
		for j in 0..<blocks.count {
			if blocks[j].hasPrefix(CharString) ||
				blocks[j].hasSuffix(CharString) {
				final.append(char)
				blocks[j] = ""
				break
			}
		}
	}
	
	return final == strUp
}

func canOrNot(can: Bool) -> String {
	return can ? "can" : "cannot"
}
