//
//  MathBrain.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/14/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class MathBrain {
	var number1: Int! = 0
	var number2: Int! = 0
	var listOfOperations: String! = ""
	var currentGameState = GameState.DIFFICULTY_CHOOSING_STATE
	
	var vc: MainViewController!
	
	init(vc: MainViewController){
		self.vc = vc
	}
	
	func enterText(txt:String!){
		vc.enterText(txt)
	}
	
	func returnToDifficultyLevelChoosingGameState(){
		currentGameState = .DIFFICULTY_CHOOSING_STATE
		enterText("Enter difficulty level. Type /difficultylevels for more information.")
	}

	func returnToGamePlayGameState(){
		currentGameState = .GAME_PLAY_STATE
	}
	
	func returnToEndOfGameState(){
		currentGameState = .END_OF_GAME_STATE
	}
}