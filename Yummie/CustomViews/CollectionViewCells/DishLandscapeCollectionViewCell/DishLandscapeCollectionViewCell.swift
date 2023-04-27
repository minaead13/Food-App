//
//  DishLandscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Mina on 23/03/2023.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)
    @IBOutlet weak var dishImg: UIImageView!
    @IBOutlet weak var describtionLbl: UILabel!
    @IBOutlet weak var Titlelbl: UILabel!
    @IBOutlet weak var Calorieslbl: UILabel!
    
    func config(dish: Dish){
        dishImg.kf.setImage(with: dish.image?.asUrl)
        Titlelbl.text = dish.name
        describtionLbl.text = dish.description
        Calorieslbl.text = dish.formattedCalories
    }
    
}
