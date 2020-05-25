//
//  AuthNavigationDelegate.swift
//  iChat
//
//  Created by Филипп on 5/21/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import Foundation


protocol AuthNavigationDelegate : class {
    func toLoginVC()
    func toSignUpVC()
}
