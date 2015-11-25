//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation
extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        //properties
        var char:Character = "!"
        var count = 0
        var characterCountDictionary = [Character:Int]()
        var character = [Character]()
        var names:[String] = []
        
        //check inventory
        if inventory.isEmpty {
            return nil
        } else {
            for item in inventory {
                names.append(item.name)
                for char in names {
                    let name = char.lowercaseString
                    for c in name.characters {
                        character.append(c)
                    }
                }
            }
        }
        
        let sortedChar = character.sort()
        // create dictionary of most common character
        for char in sortedChar {
            characterCountDictionary[char] = (characterCountDictionary[char] ?? 0 ) + 1
        }
        
        for (key, value) in characterCountDictionary {
            if value > count {
                count = value
                char = key
            }
        }
        return char
    }
}
