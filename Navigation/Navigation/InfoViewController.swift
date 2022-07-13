//
//  InfoViewController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBrown
        buttonTap()
    }
    
    func buttonTap () {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 250, height: 50))
        button.setTitle("Нажмите для нового поста", for: .normal)
        button.center = view.center
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func tap() {
        
        let alertVC = UIAlertController(title: "Новый пост", message: "Хотите сделать пост?", preferredStyle: .alert)
        let leftAction = UIAlertAction(title: "Да", style: .default, handler: {(action:UIAlertAction!) in print("Yes")})
        let rightAction = UIAlertAction(title: "Нет", style: .destructive, handler: {(action:UIAlertAction!) in print("No")})
        alertVC.addAction(leftAction)
        alertVC.addAction(rightAction)
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
}

