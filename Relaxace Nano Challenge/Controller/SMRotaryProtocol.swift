//
//  SMRotaryProtocol.swift
//  Relaxace Nano Challenge
//
//  Created by Ivan Sebastian on 25/05/19.
//  Copyright © 2019 Vanski Corp. All rights reserved.
//

import UIKit

protocol SMRotaryProtocol {
    func viewFor(tag: Int) -> UIView
    func wheelDidChangeValue(to :Int)
}
