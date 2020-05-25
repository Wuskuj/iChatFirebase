//
//  UIImageView + Extension.swift
//  iChat
//
//  Created by Филипп on 4/27/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import Foundation
import  UIKit

extension UIImageView {
    convenience init(image: UIImage? , contentMode : UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
