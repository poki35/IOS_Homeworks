//
//  Checker.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 23.08.2022.
//

import Foundation
import UIKit

final class Checker {

     static let shared = Checker()

     private init() {}

     private let staticLogin = "55555"
     private let staticPswd = "11111"

     func chckLogin(login: String, password: String) -> Bool {
         if staticLogin == login, staticPswd == password {
             return true
         } else {
             return false
         }
     }
 }
