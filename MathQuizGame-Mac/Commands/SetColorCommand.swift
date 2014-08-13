//
//  SetColorCommand.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/13/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class SetColorCommand: Command{
    
    override func execute(args: [String]?) {
		if let ARGS = args {
			if ARGS.count == 4 {
				if let rValue = ARGS[0].toInt() {
					if let gValue = ARGS[1].toInt() {
						if let bValue = ARGS[2].toInt() {
							if let aValue = ARGS[3].toInt() {
								vc.output.backgroundColor = NSColor(red: CGFloat(rValue), green: CGFloat(gValue), blue: CGFloat(bValue), alpha: CGFloat(aValue))
							}
						}
					}
				}
				
			}
		}
	}
    
    override func description() -> String? {
        return "Sets the background color of output and input."
    }
    
    override func usage() -> String? {
        return "/setcolor <r> <g> <b> <a> to set background color with RGB values of <r>, <g>, and <b>. <a> is the Alpha value."
    }
    
    override func name() -> String! {
        return "setcolor"
    }
    
    override func getGameStateExecutionOfSelfIsAllowedIn() -> [Int]! {
        return [GameState.ALL_STATES.toRaw()]
    }
    
}