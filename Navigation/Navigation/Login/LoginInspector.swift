//
//  LoginInspector.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 23.08.2022.
//

import Foundation

class LoginInspector: LoginViewControllerDelegate {
     let checker = Checker.shared

     func checkLogin(login: String, password: String) -> Bool {

         checker.chckLogin(login: login, password: password)
     }
 }
