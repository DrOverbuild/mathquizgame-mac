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
		commands.append(HelpCommand(vc: vc))
	}
	
	func parseAndExecuteCommand(txt:String!){
		var text: String = txt
		if txt.hasPrefix("/"){
			var endIndex = countElements(text)-1
			var x = StringUtil.substringOf(text, startIndex: 1, endIndex: endIndex)
			
			if let X = x {
				text = X
			}else{
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
			vc.enterText("\(commandName) is not a valid command. Type /help for help.")
			return
		}
		var command = commandTyped!
		
		if !command.canExecuteInCurrentGameState(){
			vc.enterText("You cannot run that command at this time.")
			return
		}
		
		textSplit.removeAtIndex(0)
		
		command.execute(textSplit)
	}
	
}