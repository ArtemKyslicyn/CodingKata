//
//  Exchange.swift
//  ExchangeKata
//
//  Created by Artem Kislitsyn on 08.09.2018.
//  Copyright © 2018 3. All rights reserved.
//

import UIKit

class Exchange {
	
	func exchenge( a:inout Int,  b:inout Int) {
	    a = a + b
		b = a - b
		a = a - b
	}

}
