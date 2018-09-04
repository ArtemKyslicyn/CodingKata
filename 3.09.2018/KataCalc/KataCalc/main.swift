//
//  main.swift
//  KataCalc
//
//  Created by Artem Kislitsyn on 03.09.2018.
//  Copyright © 2018 FreeIPA Mobile. All rights reserved.
//

import Foundation

print("Hello, World!")
let calc = Calc<Int>()

print("1+1= \(calc.plus(a: 1, b: 1))")
print("5-2= \(calc.minus(a: 5, b: 2))")
print("5*2= \(calc.mul(a: 5, b: 2))")
print("10/2= \(calc.div(a: 10, b: 2))")

