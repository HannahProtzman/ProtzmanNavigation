//
//  FoodTableViewController.swift
//  ProtzmanNavigation
//
//  Created by Protzman,Hannah R on 3/7/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import UIKit

class FoodTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food_cell", for: indexPath)
        cell.textLabel?.text = AppDelegate.myModel.foods[indexPath.row].name
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppDelegate.myModel.foods.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myModel = AppDelegate.myModel
        if indexPath.row == 0 {
            myModel!.increaseTally(forItem: 0)
//            performSegue(withIdentifier: "food_cell", sender: self)
        }
        else if indexPath.row == 1 {
            myModel!.increaseTally(forItem: 1)
        }
        else if indexPath.row == 2 {
            myModel!.increaseTally(forItem: 2)
            
        }
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
    }

    
}
