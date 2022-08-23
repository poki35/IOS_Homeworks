//
//  User.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.08.2022.
//

import Foundation
import UIKit

public class User {
    var fullName: String
    var avatar: UIImage
    var status: String
    
    init(fullName: String, avatar: UIImage, status: String) {
        self.fullName = fullName
        self.avatar = avatar
        self.status = status
    }
}

public protocol UserService {
    func userService(name: String) -> User?
}
