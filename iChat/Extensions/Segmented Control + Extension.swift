//
//  Segmented Control + Extension.swift
//  iChat
//
//  Created by Филипп on 5/14/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit



extension UISegmentedControl {
    convenience init(first: String, second : String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
