//
//  DifficultyLevelsCommand.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/14/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class DifficultyLevelsCommand: Command {
	
	override func execute(args:[String]?){
		vc.enterText("")
		vc.enterText("The difficulty level you choose defines the difficulty of the")
		vc.enterText("game you are about to play. There are four difficulty levels:")
		vc.enterText("")
		vc.enterText("Elementary")
		vc.enterText("Middle School")
		vc.enterText("High School")
		vc.enterText("Custom")
		vc.enterText("")
		vc.enterText("For the first three levels, you just need to type the name of")
		vc.enterText("the level. A new game will be started with builtin presets. If")
		vc.enterText("you want to play in the custom difficulty level, you need to")
		vc.enterText("give it several parameters. The parameters are as follows:")
		vc.enterText("")
		vc.enterText("minimum range")
		vc.enterText("maximum range")
		vc.enterText("list of operations")
		vc.enterText("number of questions")
		vc.enterText("")
		vc.enterText("The minimum range and maximum range parameters are there because")
		vc.enterText("before every question, the game has to generate to random")
		vc.enterText("numbers, and a random operation. Then it will put one number in")
		vc.enterText("front of the operation, and then the other number after the")
		vc.enterText("operation, call it a question, and then ask you, \"What is")
		vc.enterText("{question}?\". The range parameters tell the game to generate two")
		vc.enterText("random numbers between what you gave as the minimum range, and")
		vc.enterText("what you gave as the maximum range.")
		vc.enterText("")
		vc.enterText("The list of operations parameter tell the game which of the four")
		vc.enterText("available operations to pick one from. So if you said \"+/x\", as")
		vc.enterText("the parameter, the game will randomly pick either the plus")
		vc.enterText("operation, the division operation, or the multiplication")
		vc.enterText("operation. Note that you can't put spaces between each")
		vc.enterText("operation.")
		vc.enterText("")
		vc.enterText("The first three difficulty levels are like the custom difficulty")
		vc.enterText("level but they have builtin parameters. The parameters are as")
		vc.enterText("follows.")
		vc.enterText("")
		vc.enterText("Elementary")
		vc.enterText("minimum range: 0")
		vc.enterText("maximum range: 10")
		vc.enterText("list of operations: +")
		vc.enterText("number of questions: 10")
		vc.enterText("")
		vc.enterText("Middle School")
		vc.enterText("minimum range: 0")
		vc.enterText("maximum range: 20")
		vc.enterText("list of operations: +-x")
		vc.enterText("number of questions: 10")
		vc.enterText("")
		vc.enterText("High School")
		vc.enterText("minimum range: -20")
		vc.enterText("maximum range: 20")
		vc.enterText("list of operations: +-x/")
		vc.enterText("number of questions: 10")
		vc.enterText("")
	}
	
	override func description() -> String? {
		return "Shows you info about the difficulty levels."
	}
	
	override func usage() -> String? {
		return "/difficultylevel"
	}
	
	override func name() -> String!{
		return "difficultylevels"
	}
	
	override func alias()->String?{
		return "levels"
	}
	
	override func getGameStateExecutionOfSelfIsAllowedIn() -> [Int] {
		return [GameState.DIFFICULTY_CHOOSING_STATE.toRaw()]
	}
}
