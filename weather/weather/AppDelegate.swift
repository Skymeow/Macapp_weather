//
//  AppDelegate.swift
//  weather
//
//  Created by Sky Xu on 6/29/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.button?.title = "---°"
        statusItem.action = #selector(AppDelegate.displayPopUp(_:))
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


    @objc func displayPopUp(_ sender: AnyObject) {
        let sb = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        if let vc = sb.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "WeatherVC")) as? WeatherVC {
            let popoverview = NSPopover()
            popoverview.contentViewController = vc
            popoverview.behavior = .transient
            popoverview.show(relativeTo: (statusItem.button?.bounds)!, of: statusItem.button!, preferredEdge: .maxY)
        }
    }
    
}

