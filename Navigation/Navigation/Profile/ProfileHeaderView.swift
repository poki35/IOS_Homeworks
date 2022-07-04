//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 30.06.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Показать статус", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector (buttonPressed), for: .touchUpInside)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.text = "Пономаренко Кирилл"
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.textColor = .black
        return name
    }()
    
    let statusField: UITextField = {
        let statusField = UITextField()
        statusField.backgroundColor = .white
        statusField.font = .systemFont(ofSize: 15, weight: .regular)
        statusField.textAlignment = NSTextAlignment.center
        statusField.textColor = .black
        statusField.layer.borderWidth = 1
        statusField.layer.borderColor = UIColor.black.cgColor
        statusField.layer.cornerRadius = 12
        statusField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return statusField
    }()
    
    let status: UILabel = {
        let status = UILabel()
        status.text = "Напишите что-нибудь..."
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        return status
    }()
    
    let photo: UIImageView = {
        let photo = UIImageView()
        photo.image = UIImage(named: "322")
        photo.layer.borderWidth = 3
        photo.layer.borderColor = UIColor.white.cgColor
        photo.clipsToBounds = true
        return photo
    }()
    
    private var statusText = String()
    
    @objc func statusTextChanged (_ textField: UITextField) {
        statusText = statusField.text!
    }
         
    @objc func buttonPressed () {
        status.text = statusText
    }
    
}
