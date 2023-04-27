//
//  AllDishes.swift
//  Yummie
//
//  Created by Mina on 02/04/2023.
//

import Foundation
struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
