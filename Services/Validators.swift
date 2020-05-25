//
//  Validators.swift
//  iChat
//
//  Created by Филипп on 5/14/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit



class Validator {
    static func isField(email: String?, password: String?, confirmPassword: String?) -> Bool {
        guard let password = password,
            let confirmPassword = confirmPassword,
            let email = email,
            password != "",
            confirmPassword != "",
            email != "" else {
                return false
        }
        return true
    }
    
    
    
    static func isField(username: String?, description: String?, sex: String?) -> Bool {
        guard let description = description,
            let sex = sex,
            let username = username,
            description != "",
            sex != "",
            username != "" else {
                return false
        }
        return true
    }
    
    static func isSimpleEmail(_ email:String) -> Bool {
        let emailRegEx = "^.+@.+\\..{2,}$"
        return check(text: email, regEx: emailRegEx)
    }
    
    private static func check(text: String, regEx : String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)
        return predicate.evaluate(with: text)
    }
}
