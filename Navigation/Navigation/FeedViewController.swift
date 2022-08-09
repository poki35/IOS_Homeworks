//
//  FeedViewController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit
import StorageService

class FeedViewController: UIViewController {
    
    let post = [Post]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        title = "Лента"
        button()
    }
    
    func button() {
        
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
        button.setTitle("Запостить", for: .normal)
        button.backgroundColor = .systemBrown
        button.center = view.center
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(onClick), for:.touchUpInside)
        view.addSubview(button)
    }
    
    @objc func onClick() {
        let postViewControoler = PostViewController()
        navigationController?.pushViewController(postViewControoler, animated: true)
    }
    
}

