//
//  LinearSearch.swift
//  LinearSearchKata
//
//  Created by Artem Kislitsyn on 14.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

extension Array  where Element: AnyObject{
	
	public func linearSearch(object:AnyObject) -> Int
	{
		for (index,findObject) in self.enumerated(){
			if findObject === object{
				return index
			}
		}
		
      return NSNotFound
		
	}

}
