//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longestName = String()
        
        for name in inventory {
            if name.name.characters.count > longestName.characters.count {
                 longestName = name.name
            }
        }
        
        let longestReverseName = String(longestName.characters.reverse())
        return longestReverseName
    }
}