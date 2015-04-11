//
//  SettingsViewController.swift
//  tips
//
//  Created by Alex & Chelsea Bryan on 4/11/15.
//  Copyright (c) 2015 Alex. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipControl.selectedSegmentIndex = defaults.integerForKey("defaultTip")
    }
    
    @IBAction func onDefaultTipChanged(sender: AnyObject) {
        defaults.setObject(tipControl.selectedSegmentIndex, forKey: "defaultTip")
    }
}