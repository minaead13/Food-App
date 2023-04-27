//
//  Dish.swift
//  Yummie
//
//  Created by Mina on 23/03/2023.
//

import Foundation
struct Dish : Decodable{
    let id , name , image , description  :String?
    let calories: Int?
    
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
    
}
