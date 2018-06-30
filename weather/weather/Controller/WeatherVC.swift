//
//  ViewController.swift
//  weather
//
//  Created by Sky Xu on 6/29/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import Cocoa

class WeatherVC: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView!
    @IBOutlet weak var weatherConditionlbn: NSTextField!
    @IBOutlet weak var imgLabel: NSImageView!
    @IBOutlet weak var locationLabel: NSTextField!
    @IBOutlet weak var tempLabel: NSTextField!
    @IBOutlet weak var dateLabel: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear() {
        self.view.layer?.backgroundColor = CGColor(red: 0.29, green: 0.72, blue: 0.98, alpha: 1.00)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension WeatherVC: NSCollectionViewDataSource, NSCollectionViewDelegate, NSCollectionViewFlowLayout {
    
}




