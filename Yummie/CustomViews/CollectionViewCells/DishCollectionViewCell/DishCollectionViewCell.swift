//
//  DishCollectionViewCell.swift
//  Yummie
//
//  Created by Mina on 23/03/2023.
//

import UIKit

class DishCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishCollectionViewCell.self)
    @IBOutlet weak var TitleLbl: UILabel!
    @IBOutlet weak var dishImg: UIImageView!
    @IBOutlet weak var caliorieslbl: UILabel!
    @IBOutlet weak var describtionLbl: UILabel!
    
    func config(dish : Dish){
        TitleLbl.text = dish.name
        dishImg.kf.setImage(with: dish.image?.asUrl)
        describtionLbl.text = dish.description
        caliorieslbl.text = dish.formattedCalories
    }
}
