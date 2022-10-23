//
//  Factory.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.10.2022.
//

import UIKit
import StorageService

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
            let factory = FeedFactory()
            let feedController = factory.getController(coordinator: FeedCoordinator())
            navigationController.setViewControllers([feedController], animated: true)
            navigationController.tabBarItem.title = "Новости"
            navigationController.tabBarItem.image = UIImage(systemName: "scroll.fill")
            navigationController.navigationBar.barTintColor = UIColor.systemGray6
            
        case .loginVC:
            
            let coordinator = ProfileCoordinatorImpl(navController: navigationController)
            let factory = ProfileFactory()
            let profileController = factory.getController(coordinator: coordinator)
            navigationController.setViewControllers([profileController], animated: true)
            navigationController.tabBarItem.title = "Профиль"
            navigationController.tabBarItem.image = UIImage(systemName: "person.fill")
            navigationController.navigationBar.barTintColor = UIColor.systemGray6
        }
    }
}
