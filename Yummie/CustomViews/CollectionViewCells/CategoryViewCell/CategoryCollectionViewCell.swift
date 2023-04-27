//
//  CategoryCollectionViewCell.swift
//  Yummie
//
//  Created by Mina on 20/03/2023.
//

import UIKit
import Kingfisher
class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    func config( category : DishCategory){
        categoryTitle.text = category.title
        categoryImage.kf.setImage(with: category.image.asUrl)
        
    }
    
}
