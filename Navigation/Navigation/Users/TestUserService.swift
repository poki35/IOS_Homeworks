//
//  TestUserService.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.08.2022.
//

import Foundation
import UIKit

public class TestUserService: UserService {
    
    public var user = User(fullName: "555", avatar: UIImage(named: "55")!, status: "Test status")
    
    public func userService(name: String) -> User? {
        
        return user.fullName == name ? user : nil
    }
}

