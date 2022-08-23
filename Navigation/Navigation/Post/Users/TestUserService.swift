//
//  TestUserService.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.08.2022.
//

import Foundation
import UIKit

public class TestUserService: UserService {
    
    public var user = User(fullName: "privet", avatar: UIImage(named: "55")!, status: "Test status")
    
    public func userService(name: String) -> User? {
        let newUser = User(fullName: name, avatar: UIImage(named: "") ?? UIImage(named: "55")!, status: "")
        
        if user.fullName == newUser.fullName {
            return user
        } else {
            return nil
        }
    }
}
