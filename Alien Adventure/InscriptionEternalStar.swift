//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        var incriptionStar:UDItem?
        for item in inventory{
            if let incription = item.inscription {
                if incription.containsString("THE ETERNAL STAR") {
                    incriptionStar = item
                }
            }
        }
        return incriptionStar
    }
}
