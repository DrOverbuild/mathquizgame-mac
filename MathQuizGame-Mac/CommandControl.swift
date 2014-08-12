//
//  CommandControl.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/12/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Foundation

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
		// TODO: Parse and execute command
	}
	
	func parseArgs(txt:String!){
		// TODO: parse args and return an array string of all the args.
	}
	
}