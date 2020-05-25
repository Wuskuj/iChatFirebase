//
//  AuthError.swift
//  iChat
//
//  Created by Филипп on 5/14/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import Foundation



enum AuthError {
    case notField
    case invalidEmail
    case passwordNotMatched
    case unknownError
    case serverError
}

extension AuthError : LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notField:
            return NSLocalizedString("Заполните все поля!", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Формат почты не является допустимым!", comment: "")
        case .passwordNotMatched:
            return NSLocalizedString("Пароли не совпадают!", comment: "")
        case .serverError:
            return NSLocalizedString("Ошибка сервера!", comment: "")
        case .unknownError:
            return NSLocalizedString("Неизвестная ошибка!", comment: "")
        }
    }
}
