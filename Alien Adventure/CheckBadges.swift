//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
   
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var requestItem:[String] = []
        var isBadge:Bool = true
        for item in badges {
           requestItem.append(item.requestType.rawValue)
        }
        
        for request in requestTypes {
            if !requestItem.contains(request.rawValue) {
                isBadge = false
            }
        }
        return isBadge
    }
}
