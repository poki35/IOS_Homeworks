//
//  Factory.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.10.2022.
//

import UIKit

final class Factory {
    
    enum Flow {
        
        case feedVC
        case loginVC
    }
    
    let navigationController: UINavigationController
    let flow: Flow
    
    init(navigatonController: UINavigationController, flow: Flow) {
        
        self.navigationController = navigatonController
        self.flow = flow
        
        startModule()
        
    }
    
    func startModule() {
        
        switch flow {
            
        case .feedVC:
            
            let feedViewController = FeedViewController()
            navigationController.tabBarItem = UITabBarItem(title: "feed", image: UIImage(systemName: "person.fill"), tag: 0)
            navigationController.setViewControllers([feedViewController], animated: true)
        case .loginVC:
            
            let loginViewController = LogInViewController()
            let loginInspectorFactory = MakeLoginInspector()
            loginViewController.delegate = loginInspectorFactory.createLoginInspector()
            navigationController.tabBarItem = UITabBarItem(title: "login", image: UIImage(systemName: "house.fill"), tag: 1)
            navigationController.setViewControllers([loginViewController], animated: true)
        }
    }
}
