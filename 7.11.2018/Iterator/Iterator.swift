//
//  Iterator.swift
//  Iterator
//
//  Created by Artem Kislitsyn on 07.11.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

struct Novella {
	let name: String
}

struct Novellas {
	let novellas: [Novella]
}

struct NovellasIterator: IteratorProtocol {
	
	private var current = 0
	private let novellas: [Novella]
	
	init(novellas: [Novella]) {
		self.novellas = novellas
	}
	
	mutating func next() -> Novella? {
		defer { current += 1 }
		return novellas.count > current ? novellas[current] : nil
	}
}

extension Novellas: Sequence {
	func makeIterator() -> NovellasIterator {
		return NovellasIterator(novellas: novellas)
	}
}
