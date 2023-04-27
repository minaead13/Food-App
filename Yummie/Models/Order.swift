//
//  Order.swift
//  Yummie
//
//  Created by Mina on 02/04/2023.
//

import Foundation
struct Order : Decodable{
    let id, name : String?
    let dish: Dish?
}
