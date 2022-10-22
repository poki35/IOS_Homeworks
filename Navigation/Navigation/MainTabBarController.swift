//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.10.2022.
//

import UIKit

class MainTabBarController: UITabBarController, LoginViewControllerDelegate {
    
    private let feedVC = Factory(navigatonController: UINavigationController(), flow: .feedVC)
    private let loginVC = Factory(navigatonController: UINavigationController(), flow: .loginVC)
    
    let logInspCompFactory = MakeLoginInspector()
    lazy var loginInspector = logInspCompFactory.createLoginInspector()
    
    func checkLogin(login: String, password: String) -> Bool {
        
        loginInspector.checkLogin(login: login, password: password)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControllers()
        
    }
    
    private func setupControllers() {
        
        viewControllers = [feedVC.navigationController, loginVC.navigationController]
        
    }
    
    
}
