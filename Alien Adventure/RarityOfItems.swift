//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var dics:[UDItemRarity:Int] = [UDItemRarity.Common: 0 , UDItemRarity.Uncommon: 0 , UDItemRarity.Rare: 0, UDItemRarity.Legendary: 0]
        for item in inventory {
            dics[item.rarity] = (dics[item.rarity] ?? 0) + 1
        }
        return dics
    }
}
