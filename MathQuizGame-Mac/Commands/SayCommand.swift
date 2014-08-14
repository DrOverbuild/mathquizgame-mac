//
//  SayCommand.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/12/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Foundation

class SayCommand: Command{
	
	override func execute(args: [String]?) {
		var txt = ""
		if let ARGS = args{
			for string in ARGS {
				txt += (string + " ")
			}
		}
		
		vc.enterText(txt)
	}
	
	override func description() -> String? {
		return "Prints everything after \"/say\" to output."
	}
	
	override func usage() -> String? {
		return "/say <args> to print <args> to output"
	}
	
	override func name() -> String! {
		return "say"
	}
	
}