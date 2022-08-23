//
//  AppDelegate.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, LoginViewControllerDelegate {
    
    var window: UIWindow?
    
    var tabBarController = UITabBarController()
    let feedViewController = FeedViewController()
    let logInViewController = LogInViewController()
    let logInspCompFactory = MakeLoginInspector()
    lazy var loginInspector = logInspCompFactory.createLoginInspector()
    
    func checkLogin(login: String, password: String) -> Bool {
        
        loginInspector.checkLogin(login: login, password: password)
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let feed = UINavigationController(rootViewController: feedViewController)
        let profile = UINavigationController(rootViewController: logInViewController)

        tabBarController.viewControllers = [feed, profile]
        tabBarController.tabBar.backgroundColor = .systemGray4
        tabBarController.tabBar.layer.borderWidth = 0.5
        tabBarController.tabBar.layer.borderColor = UIColor.black.cgColor
        
        logInViewController.delegate = self
        
        feed.tabBarItem.title = "Feed"
        feed.tabBarItem.image = UIImage(systemName: "books.vertical.fill")
        profile.navigationBar.isHidden = true
        profile.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName:"person.fill"), tag: 1)
        
        window = UIWindow()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        window?.overrideUserInterfaceStyle = .light
        
        return true
    }
    
}
