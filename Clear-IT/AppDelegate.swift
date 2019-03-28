//
//  AppDelegate.swift
//  Clear-IT
//
//  Created by Rohan Gupta on 3/28/19.
//  Copyright © 2019 Rohan Gupta. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
    if #available(OSX 10.12.1, *) {
      NSApplication.shared.isAutomaticCustomizeTouchBarMenuItemEnabled = true
    }
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

