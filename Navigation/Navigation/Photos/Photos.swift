//
//  Photos.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 25.08.2022.
//

import Foundation
import UIKit

struct Photos {
    var imageName: String
}

var photosArray = [
    Photos(imageName: "0"),
    Photos(imageName: "1"),
    Photos(imageName: "2"),
    Photos(imageName: "3"),
    Photos(imageName: "4"),
    Photos(imageName: "5"),
    Photos(imageName: "6"),
    Photos(imageName: "7")
]

let photo1 = UIImage(named: "1")
let photo2 = UIImage(named: "2")
let photo3 = UIImage(named: "3")
let photo4 = UIImage(named: "4")
let photo5 = UIImage(named: "5")
let photo6 = UIImage(named: "6")
let photo7 = UIImage(named: "7")

let userImages: [UIImage] = [photo1!, photo2!,photo3!,photo4!,photo5!,photo6!,photo7!]

