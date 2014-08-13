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
	var commands: [Command]! = []
	
	init(mvc: MainViewController){
		vc = mvc
		
		// Register all default commands here:
		commands.append(ClearCommand(vc: vc))
		commands.append(SayCommand(vc: vc))
		commands.append(SetColorCommand(vc: vc))
	}
	
	func parseAndExecuteCommand(txt:String!){
		var text: String = txt
		if txt.hasPrefix("/"){
			var endIndex = countElements(text)-1
			var x = StringUtil.substringOf(text, startIndex: 1, endIndex: endIndex)
			
			if let X = x {
				text = X
				println("Removed initial slash")
			}else{
				println("Error removing initial slash.")
			}
		}
		
		var textSplit = StringUtil.splitWords(text)
		
		var commandName = textSplit[0]
		var commandTyped: Command?
		
		for c in commands{
			if commandName == c.name(){
				commandTyped = c
			}
		}
		
		if commandTyped == nil{
			vc.enterText("\(commandName) is not a valid command.")
			return
		}
		var command = commandTyped!
	}
	
	func parseArgs(txt:String!){
		// TODO: parse args and return an array string of all the args.
	}
	
}