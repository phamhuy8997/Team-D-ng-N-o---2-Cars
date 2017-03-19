//
//  GameScene.swift
//  MVP
//
//  Created by Huy Pham on 3/19/17.
//  Copyright © 2017 Huy Pham. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let playerNode1 = SKSpriteNode(imageNamed: "car 1")
    let playerNode2 = SKSpriteNode(imageNamed: "car 2")
    let background = SKSpriteNode(imageNamed: "backgroun2.png")
    let background2 = SKSpriteNode(imageNamed: "backgroun2.png")
    
    override func didMove(to view: SKView) {
        background.position = CGPoint(x: 0 , y: 0)
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        background.zPosition = 2
        background.size = CGSize(width: self.size.width, height: self.size.height)
        
        background2.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        background2.position = CGPoint(x: 0, y: background2.size.height)
        background2.size = CGSize(width: self.size.width, height: self.size.height)
        background2.zPosition = 2

        
        let start = SKSpriteNode(imageNamed: "start")
        start.anchorPoint = CGPoint(x: self.size.width, y: self.size.height)
        start.position = CGPoint(x: self.size.width, y: self.size.height)
        start.zPosition = -1
        
        
        
        let moon = SKSpriteNode(imageNamed: "moon")
        moon.position = CGPoint(x: 1000, y: 1000)
        
        addChild(background)
        addChild(background2)
        addChild(start)
        addChild(moon)
    }
    
    func configPhysics() {
        
    }
    
    func addCar() -> Void {
        
    }

    func Fox() -> Void {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let firstTouch = touches.first {
            let location = firstTouch.location(in: self)
            playerNode1.position.x = location.x
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        background.position = CGPoint(x: background.position.x , y: background.position.y - 20)
        background2.position = CGPoint(x: background2.position.x , y: background2.position.y - 20)
        
        if background.position.y < -background2.size.height {
            background.position = CGPoint(x: background2.position.x , y: background2.position.y + background.size.height)
        }
        
        if background2.position.y < -background.size.height {
            background2.position = CGPoint(x: background.position.x , y: background.position.y + background2.size.height)
        }
        
    }
}
