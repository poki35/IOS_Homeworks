//
//  MainCoordinator.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.10.2022.
//

import UIKit

protocol MainCoordinatorProtocol: AnyObject {
    
    func startApplication() -> UIViewController
    
    func completeLoginProcess(isSuccess: Bool)
        
}

final class MainCoordinator: MainCoordinatorProtocol {
    
    var currentNavController: UINavigationController?
    
    func startApplication() -> UIViewController {
        
        let loginVC = LogInViewController()
        
        loginVC.delegate = MakeLoginInspector().createLoginInspector()
        
        loginVC.coordinator = self
        let navController = UINavigationController()
        
        navController.isNavigationBarHidden = true
        
        navController.pushViewController(loginVC, animated: true)
        
        currentNavController = navController
        
        return navController
        
        //         if loginController.isAuthorized == true {
        //             return MainTabBarController()
        //         } else {
        //             return LogInViewController()
        //         }
    }
    
    func completeLoginProcess(isSuccess: Bool) {
        
        if isSuccess {
            currentNavController?.pushViewController(MainTabBarController(), animated: true)
            
        } else {
            
            let alert = UIAlertController(title: "Notice", message: "Username or password incorrect", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: { action in
                print("Retry username")
            }))
            
            currentNavController?.viewControllers.last?.present(alert, animated: true)
        }
        
    }
    
}


