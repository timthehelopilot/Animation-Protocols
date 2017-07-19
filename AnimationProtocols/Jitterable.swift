//
//  Jitterable.swift
//  AnimationProtocols
//
//  Created by Timothy Barrett on 7/18/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

protocol Jitterable: class {
  
}

extension Jitterable where Self: UIView {
  
  func jitter() {
    let animation = CABasicAnimation(keyPath: "position")
    animation.duration = 0.05
    animation.repeatCount = 5
    animation.autoreverses = true
    animation.fromValue = NSValue(cgPoint: CGPoint(x: center.x - 5.0, y: center.y))
    animation.toValue = NSValue(cgPoint: CGPoint(x: center.x + 5, y: center.y))
    layer.add(animation, forKey: "position")
  }
}
