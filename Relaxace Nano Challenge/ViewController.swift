//
//  ViewController.swift
//  Relaxace Nano Challenge
//
//  Created by Ivan Sebastian on 20/05/19.
//  Copyright © 2019 Vanski Corp. All rights reserved.
//

import UIKit
import SpriteKit


class ViewController: UIViewController {

    @IBOutlet var teste: UIView!
    let sk:SKView = SKView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    sk.frame = teste.bounds
        sk.backgroundColor = .black
        teste.addSubview(sk)
        
         let scene:SKScene = SKScene(size: teste.bounds.size)
        scene.scaleMode = .aspectFit
        scene.backgroundColor = .clear
        
        let en = SKEmitterNode(fileNamed: "MyParticle")
        en? .position = sk.center
        
        scene.addChild(en!)
        sk.presentScene(scene)
        
    }


}

