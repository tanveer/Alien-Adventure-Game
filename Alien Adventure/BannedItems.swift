//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var bannedItem:[Int] = []
        var dataDictionary:[String:AnyObject] = [:]
        
        if let file = NSBundle.mainBundle().pathForResource(dataFile, ofType: "plist") {
            let content:NSArray = NSArray(contentsOfFile: file)!
            for item in content {
                dataDictionary = item as! [String : AnyObject]
                guard let name = dataDictionary["Name"] as? String else { break }
                    if name.containsString("Laser") {
                        guard let historicalData = dataDictionary["HistoricalData"] as? [String:AnyObject] else { break }
                        guard let age = historicalData["CarbonAge"] as? Int else { break }
                        if age < 30 {
                            guard let id = dataDictionary["ItemID"] as? Int  else { break }
                            bannedItem.append(id)
                        }
                    }
                }
            }
        return bannedItem
    }

}


