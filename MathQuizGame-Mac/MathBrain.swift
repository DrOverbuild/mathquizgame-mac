//
//  MathBrain.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/14/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class MathBrain {
	var number1: Double! = 0
	var number2: Double! = 0
	var currentGameState = GameState.DIFFICULTY_CHOOSING_STATE
	
	var minRange: Int! = 0
	var maxRange: Int! = 0
	var listOfOperations: String! = ""
	var numberOfQuestions: Int! = 0
	var numberOfQuestionsAsked: Int! = 0
	var answersCanBeNegative: Bool! = false;
	var answersMustBeWholeNumbers: Bool! = true;
	
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
	
	func startGame(level: DifficultyLevel){
		switch level{
		case DifficultyLevel.ELEMENTARY:
			minRange = 0
			maxRange = 10
			numberOfQuestions = 10
			listOfOperations = "+"
		case DifficultyLevel.MIDDLE_SCHOOL:
			minRange = 0
			maxRange = 20
			numberOfQuestions = 10
			listOfOperations = "+x-/"
		case DifficultyLevel.HIGH_SCHOOL:
			minRange = -20
			maxRange = 20
			numberOfQuestions = 10
			listOfOperations = "+x-/"
			answersCanBeNegative = true;
		case DifficultyLevel.CUSTOM(let _minRange, let _maxRange, let _listOfOperations, let _numberOfQuestions):
			enterText("Minimum Range: \(_minRange), Maximum Range: \(_maxRange), List of Operations: \(_listOfOperations), Number of Questions: \(_numberOfQuestions)")
		default:
			println("ERROR")
			return
		}
		
		// Rest of game goes here.
		
	}
}