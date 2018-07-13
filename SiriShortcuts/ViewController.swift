//
//  ViewController.swift
//  SiriShortcuts
//
//  Created by Andrew Seeley on 10/7/18.
//  Copyright © 2018 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // seemu.SiriShortcuts
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var lblOrder: UILabel!
    @IBAction func orderPizza(_ sender: Any) {
        print("Order Pizza")
        let activity = NSUserActivity(activityType: "seemu.SiriShortcuts.orderPizza")
        activity.title = "Order a pizza"
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
    }
    
}

