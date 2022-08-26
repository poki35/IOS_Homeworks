//
//  LoginFactory.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 23.08.2022.
//

import Foundation

protocol LoginFactory {
     func createLoginInspector() -> LoginInspector
 }

 final class MakeLoginInspector: LoginFactory {
     func createLoginInspector() -> LoginInspector {
         let loginInspector = LoginInspector()
         return loginInspector
     }
 }
