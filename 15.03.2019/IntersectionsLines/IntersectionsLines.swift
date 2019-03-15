//
//  IntersectionsLines.swift
//  IntersectionsLines
//
//  Created by Artem Kislitsyn on 15.03.2019.
//  Copyright © 2019 3. All rights reserved.
//

import Foundation

struct Point {
	var x: Double
	var y: Double
}

struct Line {
	var p1: Point
	var p2: Point
	
	var slope: Double {
		guard p1.x - p2.x != 0.0 else { return .nan }
		
		return (p1.y-p2.y) / (p1.x-p2.x)
	}
	
	func intersection(of other: Line) -> Point? {
		let ourSlope = slope
		let theirSlope = other.slope
		
		guard ourSlope != theirSlope else { return nil }
		
		if ourSlope.isNaN && !theirSlope.isNaN {
			return Point(x: p1.x, y: (p1.x - other.p1.x) * theirSlope + other.p1.y)
		} else if theirSlope.isNaN && !ourSlope.isNaN {
			return Point(x: other.p1.x, y: (other.p1.x - p1.x) * ourSlope + other.p1.y)
		} else {
			let x = (ourSlope*p1.x - theirSlope*other.p1.x + other.p1.y - p1.y) / (ourSlope - theirSlope)
			return Point(x: x, y: theirSlope*(x - other.p1.x) + other.p1.y)
		}
	}
}
