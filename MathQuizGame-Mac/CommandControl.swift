//
//  CommandControl.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/12/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class CommandControl{
	
	var vc: MainViewController!
	var commands: [Command]!
	
	init(mvc: MainViewController){
		vc = mvc
	}
	
	func registerCommand(command:Command!){
		command.setMVC(vc)
		commands.append(command)
	}
	
	func parseAndExecuteCommand(txt:String!){
		var text: String = txt
		if txt.hasPrefix("/"){
			var endIndex = countElements(text)-2
			println("End index is: \(endIndex)")
			var x = StringUtil.substringOf(text, startIndex: 1, endIndex: endIndex)
			
			if let X = x {
				text = X
				println("Removed initial slash")
			}else{
				println("Error removing initial slash.")
			}
		}
		
		vc.enterText(text)
	}
	
	func parseArgs(txt:String!){
		// TODO: parse args and return an array string of all the args.
	}
	
}