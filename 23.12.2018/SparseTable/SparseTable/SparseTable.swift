//
//  SparseTable.swift
//  SparseTable
//
//  Created by Artem Kislitsyn on 23.12.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

public class SparseTable<T> {
	private var defaultT: T
	private var table: [[T]]
	private var function: (T, T) -> T
	
	public init(array: [T], function: @escaping (T, T) -> T, defaultT: T) {
		let N = array.count
		let W = Int(ceil(log2(Double(N))))
		table = [[T]](repeating: [T](repeating: defaultT, count: N), count: W)
		self.function = function
		self.defaultT = defaultT
		
		for w in 0..<W {
			for l in 0..<N {
				if w == 0 {
					table[w][l] = array[l]
				} else {
					let first = self.table[w - 1][l]
					let secondIndex = l + (1 << (w - 1))
					let second = ((0..<N).contains(secondIndex)) ? table[w - 1][secondIndex] : defaultT
					table[w][l] = function(first, second)
				}
			}
		}
	}
	
	public func query(from l: Int, until r: Int) -> T {
		let width = r - l
		let N = table[0].count
		if width <= 0 || l >= N {
			return defaultT
		}
		let r = min(N, r)
		let W = Int(floor(log2(Double(width))))
		let lo = table[W][l]
		let hi = table[W][r - (1 << W)]
		return function(lo, hi)
	}
}
