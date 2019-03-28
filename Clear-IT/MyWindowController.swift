//
//  MyWindowController.swift
//  Clear-IT
//
//  Created by Raymond Zhang on 3/28/19.
//  Copyright © 2019 Rohan Gupta. All rights reserved.
//

import Cocoa

class MyWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

  @IBAction func didTapDeleteFromTouch(_ sender: Any) {
    ShellUtils.deleteDerivedData()
  }
}
