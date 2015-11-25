//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        var leastValueableItem:UDItem?
        var value = Int()
        
        for item in inventory {
            if item.baseValue < value {
                value = item.baseValue
            }
            if value == 0 {
                leastValueableItem = item
            }
        }
        return leastValueableItem
    }
}
