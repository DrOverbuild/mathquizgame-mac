//
//  String Extension.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/13/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Foundation

extension String {
	subscript (r: Range<Int>) -> String? {
		
		println("Number of elements is: \(countElements(self))")
		println("End index is: \(r.endIndex)")
		
		if r.endIndex > (countElements(self)) || r.endIndex < (0){
			return nil
			}
			
			if r.startIndex > (countElements(self)) || r.startIndex < (0){
				return nil
			}
			
			var start = advance(startIndex, r.startIndex)
			var end = advance(startIndex, r.endIndex)
			return substringWithRange(Range(start: start, end: end))
	}
}

class StringUtil {
	class func substringOf(string: String, startIndex:Int,endIndex:Int) -> String? {
		return string[startIndex...endIndex]
	}
}