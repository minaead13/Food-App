//
//  OnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Mina on 19/03/2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var SlideImg: UIImageView!
    @IBOutlet weak var slideTitlelbl: UILabel!
    @IBOutlet weak var SlideDescriptionlbl: UILabel!
    

    
    func config(_ slide : OnboardingSlide){
        SlideImg.image = slide.image
        slideTitlelbl.text = slide.title
        SlideDescriptionlbl.text = slide.description
    }
}
