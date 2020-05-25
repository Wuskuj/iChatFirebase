//
//  UserError.swift
//  iChat
//
//  Created by Филипп on 5/21/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
    case canNotunwrapToMUser
    case canNotGetUserInfo
}


extension UserError : LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля!", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Пользователь не выбрал фотографию!", comment: "")
        case .canNotGetUserInfo:
            return NSLocalizedString("Невозможно загрузить информацию о User из Firebase", comment: "")
        case .canNotunwrapToMUser:
            return NSLocalizedString("Невозможно конвертировать информацию o MUser из User", comment: "")
        }
    }
}
