//
//  ArrayExtension.swift
//  BinarySearchKata
//
//  Created by Artem Kislitsyn on 07.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array  where Element: Comparable
{
	public func indexOfObjectViaBinarySearch(value:Element) -> Int
	{
		var firstIndex = 0
		var uptoIndex  = self.count
		while firstIndex < uptoIndex {
			let mid = (firstIndex + uptoIndex) / 2;
			if (value < self[mid]) {
				uptoIndex = mid;
			}
			else if (value > self[mid]) {
				firstIndex = mid + 1;
			}
			else {
				return mid;
			}
		}
		
		return NSNotFound;
		
	}
//	- (NSInteger)indexOfObjectViaBinarySearch:(id)object
//	{
//	NSUInteger firstIndex = 0;
//	NSUInteger uptoIndex  = [self count];
//
//	while (firstIndex < uptoIndex) {
//	NSUInteger mid = (firstIndex + uptoIndex) / 2;
//
//	if ([object compare:self[mid]] == NSOrderedAscending) {
//	uptoIndex = mid;
//	}
//	else if ([object compare:self[mid]] == NSOrderedDescending) {
//	firstIndex = mid + 1;
//	}
//	else {
//	return mid;
//	}
//	}
//
//	return NSNotFound;
//	}
}
