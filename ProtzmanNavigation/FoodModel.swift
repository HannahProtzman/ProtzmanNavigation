//
//  FoodModel.swift
//  ProtzmanNavigation
//
//  Created by Protzman,Hannah R on 3/7/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import Foundation

struct FoodData {
    var name:String
    var calories:Double
    var tally:Int = 0
}

class FoodRecorder {
    var foods:[FoodData]
    
    init() {
        foods = []
    }
    
    func loadData() {
        let popcorn:FoodData = FoodData(name:"Popcorn", calories:106, tally:0)
        let coke:FoodData = FoodData(name:"Coke", calories:140, tally:0)
        let chips:FoodData = FoodData(name:"Potato Chips", calories:152, tally:0)
        foods += [popcorn, coke, chips]
    }
    
    func increaseTally(forItem i:Int) -> Int {
        var tallyItem:Int = foods[i].tally
        tallyItem = tallyItem + 1
        return tallyItem
    }
    
    func getCalories(forItem i:Int) -> Double {
        return ((Double)(foods[i].calories) * (Double)(foods[i].tally))
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(foods[i].name) is \(getCalories(forItem: i))"
    }
    
    func totalCalories() -> Double {
        var sum:Double = 0
        for i in 0..<foods.count {
            sum += foods[i].calories
        }
        return sum
    }
    
    func combinedReport() -> String {
        return "Total Calories consumed is \(totalCalories)"
    }
    
    func reset() {
        foods[0].tally = 0
        foods[1].tally = 0
        foods[2].tally = 0
    }
    
}