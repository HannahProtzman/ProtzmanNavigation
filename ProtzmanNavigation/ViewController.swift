//
//  ViewController.swift
//  ProtzmanNavigation
//
//  Created by Protzman,Hannah R on 3/5/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var food:FoodData!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "JF Tracker"
        let myModel = AppDelegate.myModel.loadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myModel1 = AppDelegate.myModel

        popcornLBL.text? = myModel1!.report(forItem: 0)
        chipsLBL.text? = myModel1!.report(forItem: 2)
        cokeLBL.text? = myModel1!.report(forItem: 1)
        
        totalLBL.text? = myModel1!.combinedReport()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func record(_ sender: Any) {
        
        
    }
    
    @IBAction func reset(_ sender: Any) {
        let myModel = AppDelegate.myModel.reset()
        let myModel1 = AppDelegate.myModel
        popcornLBL.text? = myModel1!.report(forItem: 0)
        chipsLBL.text? = myModel1!.report(forItem: 2)
        cokeLBL.text? = myModel1!.report(forItem: 1)
    }
    
    @IBOutlet weak var popcornLBL: UILabel!
    
    @IBOutlet weak var cokeLBL: UILabel!
    @IBOutlet weak var chipsLBL: UILabel!
    
    @IBOutlet weak var totalLBL: UILabel!
    
    
}

