//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 23.10.2022.
//

import UIKit

protocol ProfileCoordinator {
    
    func showPhotos()
    
}

final class ProfileCoordinatorImpl: ProfileCoordinator {
    
    let navController: UINavigationController?
    
    func showPhotos() {
        let photosViewController = PhotosViewController()
        navController?.pushViewController(photosViewController, animated: true)
    }
    
    init(navController: UINavigationController?) {
        self.navController = navController
    }
}

final class ProfileFactory {
    func getController(coordinator: ProfileCoordinator) -> UIViewController {
        let controller = ProfileViewController(viewModel: ProfileViewModel(coordinator: coordinator))
        controller.title = "Профиль"
        return controller
    }
}

final class PhotoCoordinator {
    func showDetails(navigationController: UINavigationController, coordinator: PhotoCoordinator) {
        let controller = PhotosViewController()
        navigationController.pushViewController(controller, animated: true)
    }
}

