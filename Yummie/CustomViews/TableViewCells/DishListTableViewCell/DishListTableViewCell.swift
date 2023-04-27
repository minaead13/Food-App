//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Mina on 01/04/2023.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    static let identifier = "DishListTableViewCell"
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var describtionLbl: UILabel!
    
    func config(dish:Dish){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        describtionLbl.text = dish.description
    }
    func setUp(order: Order){
        dishImageView.kf.setImage(with: order.dish?.image?.asUrl)
        titleLbl.text = order.dish?.name
        describtionLbl.text = order.name
    }
}
