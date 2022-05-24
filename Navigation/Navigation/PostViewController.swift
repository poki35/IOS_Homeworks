//
//  PostViewController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    
  var titlePost: String = "Мои посты"
    
  override func viewDidLoad() {
    super.viewDidLoad()
         self.view.backgroundColor = .systemGray5
         self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tap))
         self.navigationItem.title = titlePost
  }
    
      @objc func tap() {
        let vcContr = InfoViewController()
            vcContr.modalPresentationStyle = .automatic
        self.present(vcContr, animated: true)
  }
    
}

