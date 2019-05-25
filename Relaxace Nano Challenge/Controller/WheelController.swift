//
//  WheelController.swift
//  Relaxace Nano Challenge
//
//  Created by Ivan Sebastian on 25/05/19.
//  Copyright © 2019 Vanski Corp. All rights reserved.
//

import UIKit
import os
class WheelController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let wheel = SMRotaryWheel(frame: view.frame, delegate: self as! SMRotaryProtocol, numberOFSections: 3)
        view.addSubview(wheel)

        
    }

}

extension ViewController:SMRotaryProtocol
{
    func viewFor(tag: Int) -> UIView {
        let view = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        view.backgroundColor = .red
        view.tag = tag
        view.text = "\(tag)"
        
        return view
    }
    
    func wheelDidChangeValue(to: Int) {
        print("\(to)")
    }
}
