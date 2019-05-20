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
    
    @IBOutlet weak var teste: UIView!
    
    let nextButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = #colorLiteral(red: 0.5254901961, green: 0.4705882353, blue: 0.8745098039, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(moveToNextScreen), for: .touchUpInside)
        btn.layer.cornerRadius = 10
        btn.setTitle("Start", for: .normal)
        btn.setTitleColor(.white , for: .normal)
        return btn
    }()
    
    var button :SKNode! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sk: SKView = SKView()
        sk.frame = teste.bounds
        sk.backgroundColor = .black
        teste.addSubview(sk)
        
        let scene  :SKScene = SKScene(size: teste.bounds.size)
        
        scene.scaleMode = .aspectFit
        scene.backgroundColor = .clear
        
        let en = SKEmitterNode(fileNamed: "MyParticle.sks")
        en? .position = sk.center
        
        scene.addChild(en!)
        sk.presentScene(scene)
        
        //create rectangle
        button = SKSpriteNode(color: .clear, size: CGSize(width: 100, height: 100))
        button.position = CGPoint(x: 200, y: 200)
        
        scene.addChild(button!)
        
        // button
        view.addSubview(nextButton)
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    @objc func moveToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVc = storyboard.instantiateViewController(withIdentifier: "breatheVC")
        present(secondVc, animated: true, completion: nil)
    }
    
    
}
