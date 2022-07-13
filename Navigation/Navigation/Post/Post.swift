//
//  Post.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 19.05.2022.
//

import UIKit

struct Post {
    
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
    
    static func newPost() -> [Post] {
        
        var post = [Post]()
        
        post.append(Post(author: "Константин Ковидный", description: "Первый сервис для знакомств от ЛДПР закрылся из-за отсутствия женщин. Популярная партия открыла онлайн-сервис для знакомств, но он проработал недолго.", image: "444", likes: 5604, views: 14000))
        
        post.append(Post(author: "Шарль Латэн", description: "«Газпром» и «Роскосмос» создают совместное предприятие для газификации Луны. Проект должен нивелировать эффект от сокращения валютных поступлений двух корпораций.", image: "1212", likes: 456, views: 2004))
        
        post.append(Post(author: "Антон Мицкелюнас", description: "Теперь официально на кефире: в России приняли новый ГОСТ на приготовление окрошки. Документ вступает в силу с 1 июля. Впервые с 1970 года окрошка официально может быть приготовлена на кефире.", image: "22", likes: 12, views: 55))
        
        post.append(Post(author: "Виталий Манн", description: "Робот Федор принят в состав Общественной палаты. Антропоморфный робот Фёдор нашёл новое место работы. Он стал членом Общественной палаты РФ.", image: "55", likes: 1, views: 3))
        
        return post
    }
}

