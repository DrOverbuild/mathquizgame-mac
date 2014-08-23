//
//  MainViewController.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/10/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
	
	// IB Outlets
    @IBOutlet var output: NSTextView!
    @IBOutlet var input: NSTextField!
	@IBOutlet var window: NSWindow!
	
	// Constants
	let VERSION_NUMBER = 1.1
	let NAME = "MathQuizGame"
	let mainFont = NSFont(name: "Courier", size: 12)
	
	// Other properties
	var commandCon: CommandControl!
	var brain: MathBrain!
    
    @IBAction func userDidInput(sender: NSTextField) {
		if input.stringValue.hasPrefix("/"){
			commandCon.parseAndExecuteCommand(input.stringValue)
			return
		}
		switch brain.currentGameState{
		case GameState.DIFFICULTY_CHOOSING_STATE:
			runTaskInDifficultyChoosingState()
		case GameState.GAME_PLAY_STATE:
			runTaskInGamePlayState()
		case GameState.END_OF_GAME_STATE:
			runTaskInEndOfGameState()
		default:
			enterText("Error: GameState not set correctly. Starting new game.")
			brain.returnToDifficultyLevelChoosingGameState()
		}
    }
	
	func runTaskInDifficultyChoosingState(){
		var selectedMode: String! = input.stringValue
		if selectedMode.hasPrefix("e"){
			brain.startGame(DifficultyLevel.ELEMENTARY)
		}else if selectedMode.hasPrefix("m"){
			brain.startGame(DifficultyLevel.MIDDLE_SCHOOL)
		}else if selectedMode.hasPrefix("h"){
			brain.startGame(DifficultyLevel.HIGH_SCHOOL)
		}else if selectedMode.hasPrefix("c"){
			var split = StringUtil.split(input.stringValue, regex: " ")
			if (split.count>=4){
				var minRange: Int? = split[1].toInt()
				var maxRange: Int? = split[2].toInt()
				var listOfOperations = split[3]
				var numberOfQuestions: Int? = 0
				if(split.count >= 5){
					numberOfQuestions = split[4].toInt()
				}else{
					numberOfQuestions = 10
				}
				
				if (minRange != nil && maxRange != nil && numberOfQuestions != nil){
					brain.startGame(DifficultyLevel.CUSTOM(minRange: minRange!, maxRange: maxRange!, operations: listOfOperations, numberOfQuestions: numberOfQuestions!))
				}else{
					enterText("Invalid arguments. To learn more about the custom difficulty, type /difficultylevels.")
				}

			}else{
				enterText("Too few arguments. To learn more about the custom difficulty, type /difficultylevels.")
				return
			}
		}
	}
	
	func runTaskInGamePlayState(){
		
	}
	
	func runTaskInEndOfGameState(){
		
	}
    
    override func viewDidLoad() {
        super.viewDidLoad()
		println("View Loaded!")
        // Do view setup here.
    }
    
    override func awakeFromNib() {
        output.font = mainFont
		input.font = mainFont
		window.title = NAME
		
		commandCon = CommandControl(mvc: self)
		brain = MathBrain(vc: self)
		println("Nib awoken!")
	}
	
	func enterText(inputText: String!){
        var outputText: String = output.string
        
        outputText += inputText
        outputText += "\n"
        
        output.string = outputText
        
        output.pageDown(self)
    }
}
