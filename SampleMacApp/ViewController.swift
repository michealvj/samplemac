//
//  ViewController.swift
//  SampleMacApp
//
//  Created by Micheal Vijayaraj R on 21/07/16.
//  Copyright © 2016 Micheal Vijayaraj R. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var nameText: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func submit(sender: NSButton) {
        let myPopup: NSAlert = NSAlert()
        myPopup.messageText = self.nameText.stringValue
        myPopup.informativeText = "Welcome!!"
        myPopup.alertStyle = NSAlertStyle.WarningAlertStyle
        myPopup.addButtonWithTitle("OK")
        myPopup.runModal()
    }

}

