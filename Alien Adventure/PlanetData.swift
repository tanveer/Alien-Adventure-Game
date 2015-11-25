//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        struct Planet {
            var name:String
            var common:Int
            var uncommon:Int
            var rare:Int
            var lengendary:Int
        }
        //properties
        var counter:[Int] = []
        var name:String = ""
        var largestPlanet:[String:Int] = [:]
        var planetInfo:[Planet] = []
        
        // process json data
        let file = NSBundle.mainBundle().pathForResource(dataFile , ofType: "json")
        let data = NSData(contentsOfFile: file!)
        var dataDictionary = NSDictionary()
        var dataArray = NSArray()
        
        do {
            dataArray = try! NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as! NSArray
        }
        
        for dic in dataArray {
            dataDictionary = dic as! [String:AnyObject]
            if let name = dataDictionary["Name"] as? String,
               let commonItem = dataDictionary["CommonItemsDetected"] as? Int,
               let uncommonItem = dataDictionary["UncommonItemsDetected"] as? Int,
               let rareItem = dataDictionary["RareItemsDetected"] as? Int,
               let legendaryItem = dataDictionary["LegendaryItemsDetected"] as? Int {
               // create array of struck with retrieved data form json
               planetInfo.append(Planet(name: name, common: commonItem, uncommon: uncommonItem, rare: rareItem, lengendary: legendaryItem))
            }
        }

        // loop over planet struct
        for planet in planetInfo {
            //total points
            let count = (planet.lengendary * 4) + (planet.rare * 3) + (planet.uncommon * 2) + (planet.common * 1)
            largestPlanet.updateValue(count, forKey: planet.name)
            counter.append(count)
            if largestPlanet[planet.name]! == counter.maxElement() {
                // retrun the planet name with highest points
                name = planet.name
            }
        }
        return name
    }
}
