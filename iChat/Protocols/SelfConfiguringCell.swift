//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Филипп on 5/13/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String {get}
    func configure<U: Hashable>(with value: U)
}
