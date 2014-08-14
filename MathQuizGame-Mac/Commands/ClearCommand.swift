//
//  ClearCommand.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/13/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Foundation

class ClearCommand: Command{
    
    override func name() -> String! {
        return "clear"
    }
    
    override func description() -> String? {
        return "Clears display of output."
    }
    
    override func usage() -> String? {
        return "/clear to clear output"
    }
    
    override func execute(args: [String]?) {
        vc.output.string = ""
    }
    
}