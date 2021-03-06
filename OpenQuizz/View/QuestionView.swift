//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Laurent Debeaujon on 17/03/2020.
//  Copyright © 2020 Laurent Debeaujon. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    
    enum Style {
        case correct, incorrect, standard
       }
    
    var style : Style = .standard {
        didSet {
               setStyle(style)
        }
    }

    var title  = "" {
        didSet {
            label.text = title
        }
    }

    
    private func setStyle(_ style:Style) {
        switch style {
        case .correct:
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false

            backgroundColor = UIColor(red: 200.0/255.0, green: 236.0/255.0, blue: 160.0/255.0, alpha: 1)
        case .incorrect:
            icon.image = UIImage(named: "Icon Error")
            icon.isHidden = false
               
            backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1)
              
        case .standard:
            icon.isHidden = true
            backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1)
        }
    }
    
    
}
