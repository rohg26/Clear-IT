//
//  ViewController.swift
//  Clear-IT
//
//  Created by Rohan Gupta on 3/28/19.
//  Copyright © 2019 Rohan Gupta. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }

  @IBAction func didTapDelete(_ sender: Any) {
    ShellUtils.deleteDerivedData()
  }
  
  @IBAction func deleteFromTouchBar(_ sender: Any) {
    ShellUtils.deleteDerivedData()
  }
}
