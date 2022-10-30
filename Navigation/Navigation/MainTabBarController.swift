//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.10.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let feedVC = Factory(navigatonController: UINavigationController(), flow: .feedVC)
    private let loginVC = Factory(navigatonController: UINavigationController(), flow: .loginVC)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControllers()
        
    }
    
    private func setupControllers() {
        
        viewControllers = [feedVC.navigationController, loginVC.navigationController]
        
    }
    
    
}
