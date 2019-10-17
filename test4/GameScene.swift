//
//  GameScene.swift
//  test4
//
//  Created by Guest User on 2019-10-17.
//  Copyright © 2019 Guest User. All rights reserved.
//


import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
// Adding sprites
    var rabbit:SKSpriteNode!
    let rabbit_Speed:CGFloat = 15
    
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        //initialisation of rabbit
        self.rabbit = self.childNode(withName:"rabbit") as! SKSpriteNode
    // set up physics for the rabbit
        
        
        }
        
    
    
    
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
    }
}
 override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    //func restartPlayer() {
    // hide player from screen
    //self.rabbit.removeFromParent()
    // restart player in starting position
    //rabbit.position = CGPoint(x:96, y:220)
    // show player again
    //addChild(rabbit)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let mouseTouch = touches.first
               if (mouseTouch == nil) {
                   return
               }
               let location = mouseTouch!.location(in: self)

               // WHAT NODE DID THE PLAYER TOUCH
               // ----------------------------------------------
               let nodeTouched = atPoint(location).name
               //print("Player touched: \(nodeTouched)")
               
               
               // GAME LOGIC: Move player based on touch
               if (nodeTouched == "upButton") {
                   // move up
                   self.rabbit.position.y = self.player.position.y + rabbit_Speed
               }
               else if (nodeTouched == "downButton") {
                   // move down
                    self.rabbit.position.y = self.player.position.y - rabbit_Speed
               }
               else if (nodeTouched == "leftButton") {
                   // move left
                    self.rabbit.position.x = self.player.position.x - rabbit_Speed
               }
               else if (nodeTouched == "rightButton") {
                   // move right
                    self.rabbit.position.x = self.player.position.x + rabbit_Speed
               }
               
           }
           
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }

