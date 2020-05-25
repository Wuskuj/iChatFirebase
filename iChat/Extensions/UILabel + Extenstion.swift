//
//  UILabel + Extenstion.swift
//  iChat
//
//  Created by Филипп on 4/27/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.font = font
        self.text = text;
    }
}
