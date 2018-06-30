//
//  WeatherCell.swift
//  weather
//
//  Created by Sky Xu on 6/30/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import Cocoa

class WeatherCell: NSCollectionViewItem {

    @IBOutlet weak var cellDate: NSTextField!
    @IBOutlet weak var weatherCellImg: NSImageView!
    @IBOutlet weak var cellLowTemp: NSTextField!
    @IBOutlet weak var cellHighTemp: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        enable customized view layer modificaiton
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = CGColor(red: 0.69, green: 0.85, blue: 0.99, alpha: 0.5)
        self.view.layer?.cornerRadius = 5
    }
    
}
