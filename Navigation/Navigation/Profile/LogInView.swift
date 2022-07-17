//
//  LogInView.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 07.07.2022.
//


import UIKit

class LogInView: UIView {
    
    let logo: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let backgroundForFields: UIView = {
        let backgroundForFields = UIView()
        backgroundForFields.backgroundColor = .systemGray6
        backgroundForFields.translatesAutoresizingMaskIntoConstraints = false
        backgroundForFields.layer.borderWidth = 0.5
        backgroundForFields.layer.borderColor = UIColor.lightGray.cgColor
        backgroundForFields.layer.cornerRadius = 10
        return backgroundForFields
    }()
    
    lazy var numberField: UITextField = {
        let numberField = UITextField()
        numberField.translatesAutoresizingMaskIntoConstraints = false
        numberField.textAlignment = .left
        numberField.placeholder = "Email or phone"
        numberField.font = .systemFont(ofSize: 16, weight: .regular)
        numberField.textColor = .black
        numberField.delegate = self
        return numberField
    }()
    
    lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.textAlignment = .left
        passwordField.placeholder = "Password"
        passwordField.font = .systemFont(ofSize: 16, weight: .regular)
        passwordField.textColor = .black
        passwordField.isSecureTextEntry = true
        passwordField.delegate = self
        return passwordField
    }()
    
    let logInButton: UIButton = {
        let logInButton = UIButton()
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        if let img = UIImage(named: "blue_pixel") {
            logInButton.backgroundColor = UIColor(patternImage: img)
        } else {
            logInButton.backgroundColor = .cyan
        }
        logInButton.setTitle("Log In", for: .normal)
        logInButton.layer.cornerRadius = 10
        logInButton.titleLabel?.font = .systemFont(ofSize: 15)
        return logInButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        
        for temp in [logo, backgroundForFields, numberField, passwordField, logInButton] {
            addSubview(temp)
        }
        
        NSLayoutConstraint.activate([logo.widthAnchor.constraint(equalToConstant: 100),
                                     logo.heightAnchor.constraint(equalToConstant: 100),
                                     logo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120),
                                     logo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                                     
                                     backgroundForFields.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     backgroundForFields.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     backgroundForFields.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 120),
                                     backgroundForFields.heightAnchor.constraint(equalToConstant: 100),
                                     
                                     numberField.leadingAnchor.constraint(equalTo: backgroundForFields.leadingAnchor, constant: 16),
                                     numberField.trailingAnchor.constraint(equalTo: backgroundForFields.trailingAnchor, constant: -16),
                                     numberField.topAnchor.constraint(equalTo: backgroundForFields.topAnchor, constant: 2),
                                     numberField.bottomAnchor.constraint(equalTo: backgroundForFields.topAnchor, constant: 47.75),
                                     
                                     passwordField.leadingAnchor.constraint(equalTo: backgroundForFields.leadingAnchor, constant: 16),
                                     passwordField.trailingAnchor.constraint(equalTo: backgroundForFields.trailingAnchor, constant: -16),
                                     passwordField.topAnchor.constraint(equalTo: backgroundForFields.topAnchor, constant: 52.25),
                                     passwordField.bottomAnchor.constraint(equalTo: backgroundForFields.bottomAnchor, constant: -2.5),
                                     
                                     logInButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     logInButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     logInButton.topAnchor.constraint(equalTo: backgroundForFields.bottomAnchor, constant: 16),
                                     logInButton.heightAnchor.constraint(equalToConstant: 50),
                                     logInButton.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
        
    }
    
}

extension LogInView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
        return true
    }
    
}
