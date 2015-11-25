//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        var value:Bool = false
        let concatString = s1 + s2
        
        if concatString.isEmpty && shuffle.isEmpty {
            value = true
            
        } else if concatString.characters.count == shuffle.characters.count {
            for c in concatString.characters{
                if shuffle.containsString(String(c)) {
                    if shuffle.characters.indexOf(c) == concatString.characters.indexOf(c) {
                        value = true
                    }
                }
            }
        }
        return value
    }
}
