//
//  WaitingChatsNavigation.swift
//  iChat
//
//  Created by Филипп on 5/23/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit


protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func chatToActive(chat: MChat)
}
