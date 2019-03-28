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
    deleteDerivedData()
  }
  
  func deleteDerivedData() {
    print("Delete that shit")
    let task = Process()

    let path = getPathToScript()
    
    task.launchPath = "/bin/sh"
    task.arguments = [path, "-d"]
    task.launch()
    task.waitUntilExit()
    print("Done")
  }
  
  /*
   Script Options
   OPTIONS:
   -h           Show this help message
   -a           Remove all Xcode archives
   -d           Remove everything in DerivedData folder
   -D           Remove everything in DeviceSupport folder
   -s           Remove simulator data
   -A           Remove all of the above(archived, DerivedData and simulator data)
   --dry-run    Dry run mode prints which directories would be cleared but don't remove any files
 */
  /// Gets the path to the script the xcode-clean script
  private func getPathToScript() -> String {
    let THIS_FILES_PATH:String = #file
    let subPaths = THIS_FILES_PATH.split(separator: "/")
    let pathsWithoutCurrentFile = Array(subPaths[0..<(subPaths.count - 1)])
    let path = "/" + pathsWithoutCurrentFile.joined(separator: "/")
    return "\(path)/scripts/xcode-clean.sh"
  }
  
  func cleanProduct() {
    print("Clean that shit")
    let task = Process()
    task.launchPath = "/usr/bin/xcodebuild"
    task.arguments = ["-workspace", "\"Yelp.xcworkspace\""]
  }
}
