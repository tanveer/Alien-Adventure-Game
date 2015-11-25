//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        var errorDictionary:[UDPolicingError:Int] = [UDPolicingError.ItemFromCunia:0, UDPolicingError.NameContainsLaser:0, UDPolicingError.ValueLessThan10:0]
        if inventory.isEmpty {
            return errorDictionary
        } else {
            for item in inventory {
                do {
                    try policingFilter(item)
                } catch UDPolicingError.ItemFromCunia {
                    errorDictionary[UDPolicingError.ItemFromCunia] = (errorDictionary[UDPolicingError.ItemFromCunia] ?? 0) + 1
                } catch UDPolicingError.NameContainsLaser {
                    errorDictionary[UDPolicingError.NameContainsLaser] = (errorDictionary[UDPolicingError.NameContainsLaser] ?? 0) + 1
                } catch UDPolicingError.ValueLessThan10 {
                    errorDictionary[UDPolicingError.ValueLessThan10] = (errorDictionary[UDPolicingError.ValueLessThan10] ?? 0) + 1
                } catch {
                    print("No error found")
                }
            }
        }
    return errorDictionary
    }    
}