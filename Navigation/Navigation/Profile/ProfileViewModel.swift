//
//  ProfileViewModel.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 23.10.2022.
//

import Foundation

protocol ProfileViewOutput {
    
    var posts: [Post] { get }
    
    func showPhotos()
    
}


final class ProfileViewModel {
    
    private let coordinator: ProfileCoordinator
    
    private(set) var posts: [Post] = Post.newPost()
    
    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }
    
}

extension ProfileViewModel: ProfileViewOutput {
    func showPhotos() {
        coordinator.showPhotos()
    }
    
}
