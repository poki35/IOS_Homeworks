//
//  NetworkManager.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 29.10.2022.
//

import Foundation

enum AppConfiguration: String {
    
    case starships = "https://swapi.dev/api/starships/3"
    case planet = "https://swapi.dev/api/planets/5"
    case peoples = "https://swapi.dev/api/people/8"
}

struct NetworkManager {
    
    static func request(for configuration: AppConfiguration) {
        
        if let url = URL(string: configuration.rawValue) {
            
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                
                if let data = data {
                    print("data - \(String(data: data, encoding: .utf8) ?? "")")
                }
                
                if let resonse1 = response as? HTTPURLResponse {
                    print("response -",resonse1.allHeaderFields, resonse1.statusCode)
                }
                print("error - \(error?.localizedDescription ?? ""), \(error.debugDescription)")
            }
            task.resume()
        }
        
    }
    
}
