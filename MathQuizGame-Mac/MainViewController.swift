//
//  MainViewController.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/10/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
    
    func enterText(inputText: String){
        var outputText: String = output.string
        
        outputText += inputText
        outputText += "\n"
        
        output.string = outputText
        
        output.pageDown(self)
    }

    @IBOutlet var output: NSTextView!
    @IBOutlet var input: NSTextField!
    
    @IBAction func userDidInput(sender: NSTextField) {
        enterText(sender.stringValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
