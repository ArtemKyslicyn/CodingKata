//
//  StringExtension.swift
//  DiffKataString
//
//  Created by Artem Kislitsyn on 21.10.2018.
//  Copyright © 2018 3. All rights reserved.
//

import Foundation

extension String
{
	public func diffString(string:String) -> [Range<String.Index>?]?
	{
		var ranges  = [Range<String.Index>?]()
		if self.count >= string.count
		{
			for i in 0..<self.count
			{
				let charIput =  self.index(self.startIndex, offsetBy: i)
				let charOutput = string.index(string.startIndex, offsetBy: i)
				if self[charIput] != string[charOutput]
				{
					let range = NSMakeRange(i, i+1)
					ranges.append(Range(range, in: self )
)				}
			}
			
			return ranges
			
		}
		
		return nil
	}
}

//- (NSArray *)rangeDiffString:(NSString *)string secondString:(NSString *)secondString
//{
//	if ([string length] >= [secondString length])
//	{
//		NSMutableArray * ranges = [NSMutableArray new];
//		for (int i=0; i<string.length; i++) {
//
//			if ([string characterAtIndex:i] != [secondString characterAtIndex:i])
//			{
//				[ranges addObject: [NSValue valueWithRange:NSMakeRange(i,1)]];
//			}
//
//		}
//		return ranges;
//	}
//	return nil;
//}
