//
//  ArrayExtension.swift
//  ShortestStringArray
//
//  Created by Artem Kislitsyn on 25.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Iterator.Element == String{
	
	public func shortestStringInArray () -> String?{
		var returnString:String? = nil
		for string in self{
			if returnString == nil || (string.count < returnString?.count ?? 0){
				returnString = string
			}
		}
		return returnString
	}
}
