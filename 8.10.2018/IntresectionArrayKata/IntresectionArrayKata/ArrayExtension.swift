//
//  ArrayExtension.swift
//  IntresectionArrayKata
//
//  Created by Artem Kislitsyn on 08.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element:Hashable
{
//	public func intersect(array:[Int],secondArray:[Int]) -> [Int]
//	{
//		let set = Set(arrayLiteral: array)
//		let setSecondArray = Set(arrayLiteral: secondArray)
//		let result = set.intersection(setSecondArray)
//		return result.map{ $0 }
//	}
	
	public func intersect(from array: [Element]) -> [Element]
	{
		let set = Set(self)
		let setSecondArray = Set(array)
		let result =  Array(set.intersection(setSecondArray))
		return result
	}
	
	public func difference(from other: [Element]) -> [Element] {
		let thisSet = Set(self)
		let otherSet = Set(other)
		return Array(thisSet.symmetricDifference(otherSet))
	}
}


//public func intersect(array:[Int],secondArray:[Int]) -> [Int]
//{
//	let set = Set(arrayLiteral: self)
//	let setSecondArray = Set(arrayLiteral: array)
//	let result:Set<Element>  = set.intersection(setSecondArray) as! Set<Array<Element>.Element>
//	return result.map{ $0 }
//}

//#pragma mark - Intersection of two arrays
//
//- (NSArray *)intersectionWithArray:(NSArray *)secondArray
//{
//	NSMutableSet *intersection = [NSMutableSet setWithArray:self];
//	[intersection intersectSet:[NSSet setWithArray:secondArray]];
//
//	return [intersection allObjects];
//}
