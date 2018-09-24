//
//  ArrayExtension.swift
//  CountWordsKata
//
//  Created by Artem Kislitsyn on 24.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension String{
	
	public func countWords () -> Int{
		if self.count == 0
		{
			return 0
		}
		var countWotds:Int = 1
		for char in self{
			if char == "\n" || char == "\t" || char  == " "
			{
				countWotds+=1
			}
  		}
		return countWotds
	}
	
	
	public func realCoutnWords () -> Int{
		let components = self.components(separatedBy: .whitespacesAndNewlines)
		let countWotds = components.count
		return countWotds
	}
	
	

}
