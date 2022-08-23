//
//  CurrentUserService.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.08.2022.
//

import Foundation
import UIKit

public class CurrentUserService: UserService {
    
    public var user = User(fullName: "Кирилл Пономаренко", avatar: UIImage(named: "322")!, status: "Напишите что-нибудь…")
    
    public func userService(name: String) -> User? {
        
        let newUser = User.init(fullName: name, avatar: UIImage(named: "") ?? UIImage(named: "55")!, status: "")
        
        if user.fullName == newUser.fullName {
            return user
        } else {
            return nil
        }
    }
}
