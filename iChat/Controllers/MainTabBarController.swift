//
//  MainTabBarController.swift
//  iChat
//
//  Created by Филипп on 5/12/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    private let currentUser : MUser
    
    init(currentUser: MUser = MUser(username: "qwe",
                                    email: "asd",
                                    avatarStringURL: "asd",
                                    description: "zxc",
                                    sex: "sex",
                                    id: "id")) {
        self.currentUser = currentUser
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.9490196078, alpha: 1)
        let listViewController = ListViewController(currentUser: currentUser)
        let peopleViewController = PeopleViewController(currentUser: currentUser)
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))!
        let messageImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))!
        viewControllers = [
            generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage),
            generateNavigationController(rootViewController: listViewController, title: "Conversations", image: messageImage)
            
        ]
    }
    
    
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        return navigationVC
    }
}
