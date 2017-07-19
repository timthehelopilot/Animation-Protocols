//
//  Flashable.swift
//  AnimationProtocols
//
//  Created by Timothy Barrett on 7/18/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

protocol Flashable {
  
}

extension Flashable where Self: UIView {
  
  func flash() {
      UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
        self.alpha = 1.0
      }) { animationCompleted in
        if animationCompleted {
          UIView.animate(withDuration: 0.3, delay: 2.0, options: .curveEaseOut, animations: {
            self.alpha = 0.0
          }, completion: nil)
        }
      }
    }
}
