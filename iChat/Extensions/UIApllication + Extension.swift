//
//  UIApllication + Extension.swift
//  iChat
//
//  Created by Филипп on 5/21/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit

extension UIApplication {
    class func getTopViewController(base:UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController?{
        if let nav = base as? UINavigationController{
            return getTopViewController(base: nav.visibleViewController)
        }else if let tab = base as? UITabBarController, let selected = tab.selectedViewController{
            return getTopViewController(base: selected)
        }else if let presented = base?.presentedViewController{
            return getTopViewController(base: presented)
        }
        return base
    }
}
