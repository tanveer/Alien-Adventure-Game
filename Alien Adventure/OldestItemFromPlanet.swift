//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        let planetName = planet
        var oldestValue:[Int] = []
        
        for item in inventory{
            if planetName == item.historicalData["PlanetOfOrigin"]! as! String{
                for i in item.historicalData{
                    if i.0 == "CarbonAge" {
                        oldestValue.append(i.1 as! Int)
                    }
                }
            }
        }
        
        for item in inventory {
            for highestValue in item.historicalData {
                if highestValue.1 as? Int == oldestValue.maxElement() {
                    return item
                }
            }
        }
        return nil
    }
    
}
