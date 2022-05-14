//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Кирилл Пономаренко on 14.05.2022.
//

import UIKit

class ProfileView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var LabelName: UILabel!
    
    @IBOutlet weak var LabelDateOfBirthday: UILabel!
    
    @IBOutlet weak var LabelCity: UILabel!
    
    @IBOutlet weak var Text: UITextView!
}
