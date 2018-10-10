//
//  ExtensionArray.swift
//  DuplicatesArrayKata
//
//  Created by Artem Kislitsyn on 10.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension Array where Element:Hashable
{
	
	func hasDuplicates() -> Bool {
		var hashDictioanary = [Int:Element]()
		
		for element in self
		{
			let hash = element.hashValue
			if hashDictioanary[hash]  == nil
			{
				hashDictioanary[hash] = element
			}else{
				return true
			}
			
		}
		
		return false
	}
	
}

//- (BOOL)hasDuplicates
//	{
//		NSMutableDictionary *registry = [[NSMutableDictionary alloc] initWithCapacity:self.count];
//
//		for (id element in self) {
//			NSNumber *elementHash = @([element hash]);
//
//			if (registry[elementHash] == nil) {
//				registry[elementHash] = element;
//			}
//			else {
//				NSLog(@"-[NSArray hasDuplicates] found duplicate elements: %@ and %@", registry[elementHash], element);
//
//				return YES;
//			}
//		}
//
//		return NO;
//}
