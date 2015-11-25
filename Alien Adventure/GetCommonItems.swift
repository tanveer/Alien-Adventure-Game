//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserv
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
        let commonItem:[UDItem] = inventory.filter { $0.rarity == .Common }
        return commonItem
    }
    
}
