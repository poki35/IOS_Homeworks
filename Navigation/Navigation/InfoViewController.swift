//
//  InfoViewController.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    struct Planets: Codable {
        let name: String
        let rotationPeriod: String
        let orbitalPeriod: String
        
        enum CodingKeys: String, CodingKey {
            case name
            case rotationPeriod = "rotation_period"
            case orbitalPeriod = "orbital_period"
        }
    }
    
    private var url1 = "https://jsonplaceholder.typicode.com/todos/1"
    private var url2 = "https://swapi.dev/api/planets/1"
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .black)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    private lazy var infoLabel2: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .black)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    private lazy var button: CustomButton = {
        
        let button = CustomButton(title: "Delete post", titleColor: .white)
        button.backgroundColor = .systemBlue
        return button
        
    }()
    
    private func buttonAction() {
        
        button.action = { [weak self] in
            let alert = UIAlertController(title: "Notice", message: "Do you really want to delete your post?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { action in
                print("Нажато Delete")
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { action in
                print("Нажато OK")
            }))
            self!.present(alert, animated: true)
        }
    }
    
    private func serializeData(userURL: String, completition: @escaping (String) -> Void) {
        
        if let url = URL(string: userURL) {
            
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let safeData = data {
                    do {
                        let object = try JSONSerialization.jsonObject(with: safeData, options: [])
                        if let dictionary = object as? Dictionary<String, Any> {
                            completition(dictionary["title"] as? String ?? "")
                        }
                    } catch let error { print(error) }
                }
            }
            task.resume()
        } else { print("URL not found") }
    }
    
    private func decodeData(userURL: String, completition: @escaping (String) -> Void) {
        
        if let url = URL(string: userURL) {
            
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let safeData = data {
                    do {
                        let planets = try JSONDecoder().decode(Planets.self, from: safeData)
                        completition(planets.orbitalPeriod)
                    } catch let error { print(error) }
                }
            }
            task.resume()
        } else { print("URL not found") }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBrown
        
        setUp()
        buttonAction()
        
        decodeData(userURL: url2) { value in
            DispatchQueue.main.async {
                self.infoLabel2.text = "Период обращения планеты Татуин: \(value)"
            }
        }
        serializeData(userURL: url1) { value in
            DispatchQueue.main.async {
                self.infoLabel.text = value
            }
        }
        
    }
    
    private func setUp() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(self.button)
        self.view.addSubview(self.infoLabel)
        self.view.addSubview(self.infoLabel2)
        
        self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        self.infoLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -200).isActive = true
        self.infoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.infoLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.infoLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        self.infoLabel2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -300).isActive = true
        self.infoLabel2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.infoLabel2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.infoLabel2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    
    
}


