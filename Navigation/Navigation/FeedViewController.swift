//
//  FeedViewController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit
import StorageService

class FeedViewController: UIViewController {
    
    private var post: Post?
    
    private let model = Model()
    private let stackView = UIStackView()
    
    private lazy var button: CustomButton = {
        let button = CustomButton(title: "Кнопка 1", titleColor: .white)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        return button
    }()
    
    private lazy var button1: CustomButton = {
        let button = CustomButton(title: "Кнопка 2", titleColor: .white)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        return button
    }()
    
    private lazy var checkButton: CustomButton = {
        let button = CustomButton(title: "Проверить слово", titleColor: .white)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        return button
    }()
    
    private lazy var customTextField: CustomTextField = {
        let textField = CustomTextField(placeholder: "Введите слово для проверки")
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 6
        textField.textColor = .black
        return textField
    }()
    
    private lazy var checkResultLabel: UILabel = {
        let label = UILabel()
        label.alpha = 1
        label.layer.cornerRadius = 6
        label.textAlignment = .center
        label.text = "Результат проверки"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        configureStackView()
        buttonsAction()
        NotificationCenter.default.addObserver(self, selector: #selector(checkTheWord), name: NSNotification.Name("myEvent"), object: nil)
    }
    
    private func buttonsAction() {
        button.action = { [weak self] in
            let postViewController = PostViewController()
            self?.navigationController?.pushViewController(postViewController, animated: true)
            postViewController.titlePost = "Заголовок поста"
        }
        
        button1.action = { [weak self] in
            let postViewController = PostViewController()
            self?.navigationController?.pushViewController(postViewController, animated: true)
            postViewController.titlePost = "Заголовок поста"
        }
        
        checkButton.action = { [weak self] in
            guard let text = self?.customTextField.text, !text.isEmpty else { return }
            self?.model.check(word: text)
        }
    }
    
    @objc private func checkTheWord() {
        if self.model.check {
            checkResultLabel.text = "Верно"
            checkResultLabel.textColor = .white
            checkResultLabel.backgroundColor = .systemGreen
        } else {
            checkResultLabel.text = "Неверно"
            checkResultLabel.textColor = .white
            checkResultLabel.backgroundColor = .systemRed
        }
        
    }
        
        func configureStackView() {
            view.addSubview(stackView)
            stackView.axis = .vertical
            stackView.distribution = .equalSpacing
            stackView.spacing = 10
            addButtonsToStackView()
            setStackViewConstraints()
        }
        
        func setStackViewConstraints() {
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        
        func addButtonsToStackView() {
            stackView.addArrangedSubview(button)
            stackView.addArrangedSubview(button1)
            stackView.addArrangedSubview(customTextField)
            stackView.addArrangedSubview(checkButton)
            stackView.addArrangedSubview(checkResultLabel)
        }
        
    }
    

