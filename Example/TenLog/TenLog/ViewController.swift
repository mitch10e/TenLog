//
//  ViewController.swift
//  TenLog
//
//  Created by Mitchell Tenney on 10/7/16.
//  Copyright © 2016 Mitchell Tenney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        debug("Hello, World!")
        debug("How are you?\nI am fine.")
        debug("Do you like to have organized logs in your project?\nYes! We hate the timestamp stuff!\nWe usually don't even read the timestamps!\nAnd what is it with those random AppName[Numbers:Numbers] stuff?\nAverage developers don't care about this stuff!\nWe just want something easy to scan through!")

        debug("http://www.example.com", tag: "get")
        debug("http://www.example.com", tag: "200")
        
        debug("http://www.failurl.com", tag: "get")
        debug("http://www.failurl.com", tag: "404")
        
        TenLogSettings.disable(tag: "get")
        TenLogSettings.disable(tag: "200")
        TenLogSettings.disable(tag: "404")
        debug("http://www.example.com", tag: "get")
        debug("http://www.example.com", tag: "200")
        
        debug("http://www.failurl.com", tag: "get")
        debug("http://www.failurl.com", tag: "404")
        
        
        let tableFlip = "(╯°□°）╯︵ ┻━┻"
        debug(tableFlip, tag: "rage")

        debug("Just use debug() like a normal print()!", tag: "Info")
        debug("Check out the TenLogSettings to modify how the logs work!", tag: "Info")
        
        debug("Item 1", "Item 2", "Item 3", tag: "Test")
        
        debug("Don't forget to ⭐️ the repo!\n\tThank You!", tag: "Vital")
    }
    
}

