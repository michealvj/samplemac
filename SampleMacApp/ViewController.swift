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

    @IBAction func crashApp(_ sender: AnyObject) {
        //let array: [String] = ["Micheal", "Vijay", "Raj"]
        //print(array[3])

        fatalError()
    }

    @IBAction func submit(_ sender: NSButton) {
        let myPopup: NSAlert = NSAlert()
        myPopup.messageText = "Hi " + self.nameText.stringValue
        myPopup.informativeText = "Welcome!"
        myPopup.alertStyle = NSAlertStyle.warning
        myPopup.addButton(withTitle: "OK")
        myPopup.runModal()
        
    }

}

