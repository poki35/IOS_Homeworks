//
//  MainCoordinator.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 22.10.2022.
//

import UIKit

protocol MainCoordinatorProtocol {
    
     func startApplication() -> UIViewController
 }

 final class MainCoordinator: MainCoordinatorProtocol {
     
     func startApplication() -> UIViewController {
         
         return MainTabBarController()
     }


 }


