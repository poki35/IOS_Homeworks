//
//  FeedCoordinator.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 23.10.2022.
//

import UIKit

final class FeedCoordinator {
    
}

final class FeedFactory {
    func getController(coordinator: FeedCoordinator) -> UIViewController {
        let model = Model()
        let coordinator = FeedCoordinator()
        let controller = FeedViewController(model: model, coordinator: coordinator)
        controller.title = "Лента"
        return controller
    }
}

final class PostCoordinator {
    func showDetail(navigationController: UINavigationController?, coordinator: PostCoordinator) {
        let controller = PostViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
}

final class InfoCoordinator {
    func showDetails(navigationController: UINavigationController?, coordinator: InfoCoordinator) {
        let controller = InfoViewController()
        controller.view.backgroundColor = .green
        navigationController?.present(controller, animated: true)
    }
}
