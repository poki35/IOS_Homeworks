//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 30.06.2022.
//


import UIKit
import StorageService

class ProfileHeaderView: UIView {
    
    let userService = CurrentUserService()
    
    enum Constants {
        static let avatarSize: CGFloat = 100
    }
    
    lazy var button: UIButton = {
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
    
    lazy var name: UILabel = {
        let name = UILabel()
        name.text = userService.user.fullName
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.textColor = .black
        return name
    }()
    
    let separatingLine: UIView = {
        let separatingLine = UIView()
        separatingLine.backgroundColor = .lightGray
        return separatingLine
    }()
    
    lazy var statusField: UITextField = {
        let statusField = UITextField()
        statusField.backgroundColor = .white
        statusField.font = .systemFont(ofSize: 15, weight: .regular)
        statusField.textColor = .black
        statusField.layer.borderWidth = 1
        statusField.layer.borderColor = UIColor.black.cgColor
        statusField.layer.cornerRadius = 12
        statusField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return statusField
    }()
    
    lazy var status: UILabel = {
        let status = UILabel()
        status.text = userService.user.status
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        return status
    }()
    
    lazy var photo: UIImageView = {
        let photo = UIImageView()
        photo.image = userService.user.avatar
        photo.layer.borderWidth = 3
        photo.layer.borderColor = UIColor.white.cgColor
        photo.clipsToBounds = true
        photo.layer.cornerRadius = Constants.avatarSize / 2
        return photo
    }()
    
    private var statusText = String()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .lightGray
        
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func statusTextChanged (_ textField: UITextField) {
        statusText = statusField.text ?? "No text"
    }
    
    @objc func buttonPressed () {
        status.text = statusText
    }
    
    private func setUp() {
        
        addSubviews(button, name, statusField, status, photo, separatingLine)
        
        photo.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        status.translatesAutoresizingMaskIntoConstraints = false
        statusField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        separatingLine.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([separatingLine.bottomAnchor.constraint(equalTo: bottomAnchor),
                                     separatingLine.leadingAnchor.constraint(equalTo: leadingAnchor),
                                     separatingLine.trailingAnchor.constraint(equalTo: trailingAnchor),
                                     separatingLine.heightAnchor.constraint(equalToConstant: 1),
                                     
                                     photo.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
                                     photo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
                                     photo.widthAnchor.constraint(equalToConstant: Constants.avatarSize),
                                     photo.heightAnchor.constraint(equalToConstant: Constants.avatarSize),
                                     
                                     name.leadingAnchor.constraint(equalTo: self.photo.trailingAnchor, constant: 16),
                                     name.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
                                     
                                     status.leadingAnchor.constraint(equalTo: self.photo.trailingAnchor, constant: 16),
                                     status.bottomAnchor.constraint(equalTo: self.photo.bottomAnchor, constant: -18),
                                     
                                     statusField.leadingAnchor.constraint(equalTo: self.status.leadingAnchor),
                                     statusField.topAnchor.constraint(equalTo: self.status.bottomAnchor, constant: 10),
                                     statusField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     statusField.heightAnchor.constraint(equalToConstant: 50),
                                     
                                     button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                                     button.topAnchor.constraint(equalTo: self.statusField.bottomAnchor, constant: 16),
                                     button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                                     button.heightAnchor.constraint(equalToConstant: 50),
                                     button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)])
        
    }
    
}
