
//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        var decryptKey = UInt8()
        for value in Range<UInt8>(0..<255) {
            var decryptedMessage:[UInt8] = []
            for char in encryptedString {
                let newChar = char ^ value
                decryptedMessage.append(newChar)
            }
            guard let decryptedString = String(bytes: decryptedMessage, encoding: NSUTF8StringEncoding) else { break }
            if decryptedString == "udacity" {
                decryptKey = value
            }
        }
        return decryptKey
    }
}
