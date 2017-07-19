//
//  CustomTextView.swift
//  AnimationProtocols
//
//  Created by Timothy Barrett on 7/18/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextView: UITextField, Jitterable {

  override func prepareForInterfaceBuilder() {
    updateButtonView()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    updateButtonView()
  }
  
  func updateButtonView() {
    layer.cornerRadius = 15
    alpha = 0.75
  }
}
