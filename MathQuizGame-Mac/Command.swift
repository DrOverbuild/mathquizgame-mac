//
//  Command.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/12/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

// To create an executable command for the app, create a subclass of this class
// and add an instance of the class in the commands array in class CommandControl.
class Command{
	
	var vc: MainViewController!
	
	func execute(args:[String]?){
		
	}
	
	func description() -> String? {
		return nil
	}
	
	func usage() -> String? {
		return nil
	}
	
	func name() -> String!{
		return "Command"
	}
	
	func alias()->String?{
		return nil
	}

	init(vc: MainViewController){
		self.vc = vc
	}
	
	func getGameStateExecutionOfSelfIsAllowedIn() -> [Int] {
		return [GameState.ALL_STATES.toRaw()]
	}
	
	func canExecuteInCurrentGameState() -> Bool {
		let gamestates = getGameStateExecutionOfSelfIsAllowedIn()
		let index = find(gamestates,vc.brain.currentGameState.toRaw())
		let indexIsNotNil = index != nil
		let gamestatesContainsAllGameStates = find(gamestates,GameState.ALL_STATES.toRaw()) != nil
		return indexIsNotNil || gamestatesContainsAllGameStates
	}

}