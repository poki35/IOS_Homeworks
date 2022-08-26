//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Кирилл Пономаренко on 25.08.2022.
//

import Foundation
import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private let inCellView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let arrowImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "arrow.right")
        view.tintColor = .black
        return view
    }()
    
    private let photo0: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "0")
        view.contentMode = .scaleToFill
        view.clipsToBounds = true
        view.layer.cornerRadius = 6
        return view
    }()
    
    private let photo1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "1")
        view.contentMode = .scaleToFill
        view.clipsToBounds = true
        view.layer.cornerRadius = 6
        return view
    }()
    
    private let photo2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "2")
        view.contentMode = .scaleToFill
        view.clipsToBounds = true
        view.layer.cornerRadius = 6
        return view
    }()
    
    private let photo3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "3")
        view.contentMode = .scaleToFill
        view.clipsToBounds = true
        view.layer.cornerRadius = 6
        return view
    }()
    
    private let photosLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "Галерея"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    private func setUp() {
        
        contentView.addSubviews(inCellView, arrowImageView, photosLabel, photo0, photo1, photo2, photo3)
        
        inCellView.translatesAutoresizingMaskIntoConstraints = false
        arrowImageView.translatesAutoresizingMaskIntoConstraints = false
        photosLabel.translatesAutoresizingMaskIntoConstraints = false
        photo0.translatesAutoresizingMaskIntoConstraints = false
        photo1.translatesAutoresizingMaskIntoConstraints = false
        photo2.translatesAutoresizingMaskIntoConstraints = false
        photo3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            inCellView.topAnchor.constraint(equalTo: contentView.topAnchor),
            inCellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            inCellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            inCellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            arrowImageView.centerYAnchor.constraint(equalTo: photosLabel.centerYAnchor),
            arrowImageView.trailingAnchor.constraint(equalTo: inCellView.trailingAnchor, constant: -12),
            arrowImageView.heightAnchor.constraint(equalToConstant: 24),
            arrowImageView.widthAnchor.constraint(equalToConstant: 24),
            
            photosLabel.leadingAnchor.constraint(equalTo: inCellView.leadingAnchor, constant: 12),
            photosLabel.topAnchor.constraint(equalTo: inCellView.topAnchor, constant: 12),
            
            photo0.leadingAnchor.constraint(equalTo: inCellView.leadingAnchor, constant: 12),
            photo0.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photo0.bottomAnchor.constraint(equalTo: inCellView.bottomAnchor, constant: -12),
            photo0.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 48) / 4),
            photo0.heightAnchor.constraint(equalTo: photo0.widthAnchor),
            
            photo1.leadingAnchor.constraint(equalTo: photo0.trailingAnchor, constant: 8),
            photo1.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photo1.bottomAnchor.constraint(equalTo: inCellView.bottomAnchor, constant: -12),
            photo1.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 48) / 4),
            photo1.heightAnchor.constraint(equalTo: photo1.widthAnchor),
            
            photo2.leadingAnchor.constraint(equalTo: photo1.trailingAnchor, constant: 8),
            photo2.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photo2.bottomAnchor.constraint(equalTo: inCellView.bottomAnchor, constant: -12),
            photo2.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 48) / 4),
            photo2.heightAnchor.constraint(equalTo: photo2.widthAnchor),
            
            photo3.leadingAnchor.constraint(equalTo: photo2.trailingAnchor, constant: 8),
            photo3.topAnchor.constraint(equalTo: photosLabel.bottomAnchor, constant: 12),
            photo3.bottomAnchor.constraint(equalTo: inCellView.bottomAnchor, constant: -12),
            photo3.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 48) / 4),
            photo3.heightAnchor.constraint(equalTo: photo3.widthAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
