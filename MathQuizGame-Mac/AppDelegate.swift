//
//  AppDelegate.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/10/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet weak var window: NSWindow!

	@IBOutlet var vc: MainViewController!

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
		enterText("MathQuizGame initialized.")
		enterText("To view a list of commands, type /help")
		vc.brain.returnToDifficultyLevelChoosingGameState()
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }

	func enterText(txt:String){
		vc.enterText(txt)
	}
	
}

