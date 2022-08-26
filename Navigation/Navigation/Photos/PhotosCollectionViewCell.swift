//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 25.08.2022.
//

import Foundation
import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    let photo: UIImageView = {
        let photo = UIImageView()
        photo.contentMode = .scaleAspectFill
        photo.clipsToBounds = true
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    func setupPhoto(photos: Photos) {
        photo.image = UIImage(named: "\(photos.imageName)")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(photo)
        
        photo.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        photo.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        photo.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
