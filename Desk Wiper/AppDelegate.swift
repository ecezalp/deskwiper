//
//  AppDelegate.swift
//  Desk Wiper
//
//  Created by Ece Ozalp on 11/17/16.
//  Copyright © 2016 Ece Ozalp. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let hideIconTask = NSTask()
        
        hideIconTask.launchPath = "~"
        
        hideIconTask.arguments = ["defaults write com.apple.finder CreateDesktop false; killall Finder"]
        
        hideIconTask.launch()
   
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        
        let showIconTask = NSTask()
        
        showIconTask.launchPath = "~"
        
        showIconTask.arguments = ["defaults write com.apple.finder CreateDesktop true; killall Finder"]

        showIconTask.launch()
        
    }


}

