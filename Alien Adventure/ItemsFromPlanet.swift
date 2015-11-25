//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        let alienPlanet = planet
        var historicalData:[UDItem] = []
        for item in inventory {
            if alienPlanet == item.historicalData["PlanetOfOrigin"]! as! String {
                historicalData.append(item)
            }
        }
        return historicalData
    }
    
}
