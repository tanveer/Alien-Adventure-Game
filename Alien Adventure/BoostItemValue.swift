//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        let boostedValue = inventory.map { (var item:UDItem) -> UDItem in
            item.baseValue = item.baseValue + 100
            return item
        }
        return boostedValue
    }
}