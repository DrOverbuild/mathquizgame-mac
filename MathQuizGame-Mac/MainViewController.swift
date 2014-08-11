//
//  MainViewController.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/10/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet var output: NSTextView!
    @IBOutlet var input: NSTextField!
    
    @IBAction func userDidInput(sender: NSTextField) {
        var outputText: String = output.string
        var inputText: String = input.stringValue
        
        outputText += inputText
        outputText += "\n"
        
        output.string = outputText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
