//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    
   init(requestType: UDRequestType) {
        self.requestType = requestType
        let texture:SKTexture = SKTexture(imageNamed: "BadgeMagenta")
        super.init(texture: texture, color: UIColor.clearColor(), size: CGSizeMake(48, 48))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}