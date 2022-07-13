//
//  AppDelegate.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var tabBarController = UITabBarController()
    let feedViewController = FeedViewController()
    let logInViewController = LogInViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let feed = UINavigationController(rootViewController: feedViewController)
        
        let profile = UINavigationController(rootViewController: logInViewController)
        profile.navigationBar.isHidden = true
        
        tabBarController.viewControllers = [feed, profile]
        tabBarController.tabBar.backgroundColor = .systemGray4
        tabBarController.tabBar.layer.borderWidth = 0.5
        tabBarController.tabBar.layer.borderColor = UIColor.black.cgColor
        
        feed.tabBarItem.title = "Feed"
        feed.tabBarItem.image = UIImage(systemName: "books.vertical.fill")
        
        profile.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName:"person.fill"), tag: 1)
        
        window = UIWindow()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}
