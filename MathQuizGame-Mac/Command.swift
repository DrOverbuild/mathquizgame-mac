//
//  Command.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/12/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Foundation

// To create an executable command for the app, create a subclass of this class
// and add an instance of the class in the commands array in class CommandControl.
class Command{
	
	var vc: MainViewController!
	
	func setMVC(mvc:MainViewController!){
		vc = mvc
	}
	
	func execute(args:[String]?){
		
	}
	
	func description() -> String? {
		return nil
	}
	
	func usage() -> String? {
		return nil
	}
	
	func getGameStateExecutionOfSelfIsAllowedIn() -> [Int]!{
		return [GameState.DIFFICULTY_CHOOSING_STATE.toRaw(),GameState.GAME_PLAY_STATE.toRaw(),GameState.END_OF_GAME_STATE.toRaw()]
	}
	
}