//
//  AuthService.swift
//  iChat
//
//  Created by Филипп on 5/13/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn

class AuthService {
    private let auth = Auth.auth()
    static let shared = AuthService()
    func login(email: String?, password: String?, completion: @escaping (Result<User, Error>) -> Void) {
        
        guard let email = email , let password = password else {
            completion(.failure(AuthError.notField))
            return
        }
        
        
        auth.signIn(withEmail: email, password: password) { (result, error) in
            guard let result = result else {
                completion(.failure(error!))
                return
            }
            completion(.success(result.user))
        }
    }
    
    
    func googleLogin(user:GIDGoogleUser!, error: Error!, completion: @escaping (Result<User, Error>) -> Void) {
        if let error = error{
            completion(.failure(error))
            return
        }
        
        guard let auth = user.authentication else {return}
        let credential = GoogleAuthProvider.credential(withIDToken: auth.idToken, accessToken: auth.accessToken)
        Auth.auth().signIn(with: credential) { (result, error) in
            guard let result = result else {
                completion(.failure(error!))
                return
            }
            completion(.success(result.user))
        }
    }
    
    
    func register(email: String?, password : String?, confirmPassword: String?, completion: @escaping (Result<User,Error>) -> Void){
        guard Validator.isField(email: email, password: password, confirmPassword: confirmPassword) else {
            completion(.failure(AuthError.notField  ))
            return
        }
        
        guard password!.lowercased() == confirmPassword!.lowercased() else {
            completion(.failure(AuthError.passwordNotMatched))
            return
        }
        
        guard Validator.isSimpleEmail(email!) else {
            completion(.failure(AuthError.invalidEmail))
            return
        }
        
        auth.createUser(withEmail: email!, password: password!) { (result, error) in
            guard let result = result else {
                completion(.failure(error!))
                return
            }
            completion(.success(result.user))
        }
    }
}
