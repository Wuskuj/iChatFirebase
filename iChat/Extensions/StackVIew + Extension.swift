//
//  StackVIew + Extension.swift
//  iChat
//
//  Created by Филипп on 4/27/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import Foundation
import  UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
