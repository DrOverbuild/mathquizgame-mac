//
//  HelpCommand.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/13/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class HelpCommand: Command{
	override func execute(args:[String]?){
		for x in vc.commandCon.commands{
			if x.canExecuteInCurrentGameState(){
				vc.enterText("/\(x.name()!): \(x.description()!)")
			}
		}
	}
	
	override func description() -> String? {
		return "Displays this list."
	}
	
	override func usage() -> String? {
		return "/help to display help."
	}
	
	override func name() -> String!{
		return "help"
	}
	
	override func alias() -> String? {
		return "?"
	}
}