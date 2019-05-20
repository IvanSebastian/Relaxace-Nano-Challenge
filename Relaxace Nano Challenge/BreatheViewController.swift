//
//  BreatheViewController.swift
//  Relaxace Nano Challenge
//
//  Created by Ivan Sebastian on 20/05/19.
//  Copyright © 2019 Vanski Corp. All rights reserved.
//

import UIKit

class BreatheViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    var randomX = { return CGFloat.random(in: 50...300)}
    var randomY = { return CGFloat.random(in: 50...300)}
    
    var colorArray:[UIColor] =
        [
            //            UIColor.generateArrayColor(red: 89, green: 255, blue: 231),
            //            UIColor.generateArrayColor(red: 0, green: 228, blue: 255),
            //            UIColor.generateArrayColor(red: 92, green: 116, blue: 194),
            //            UIColor.generateArrayColor(red: 44, green: 141, blue: 196),
            UIColor.generateArrayColor(red: 91, green: 41, blue: 95),
            
            ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleView.layer.cornerRadius = circleView.bounds.height/2
        circleView.backgroundColor = pickColorArray()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(startAnimate))
        gesture.numberOfTapsRequired = 1
        
        circleView.isUserInteractionEnabled = true
        circleView.addGestureRecognizer(gesture)
        
        //        startAnimate()
        
    }
    
    @objc func startAnimate ()
    {
        print("start animate")
        UIView.animate(withDuration: 4, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.circleView.transform = CGAffineTransform(scaleX: 2.5, y: 2.5)
        }) { (_) in
            print("bigger")
        }
    }
    
    
    func pickColorArray() -> UIColor
    {
        let colorArrayCount = colorArray.count
        let randomElement = Int.random(in: 0..<colorArrayCount)
        return colorArray[randomElement]
    }
    
}

extension UIColor
{
    static func generateArrayColor (red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor
    {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
