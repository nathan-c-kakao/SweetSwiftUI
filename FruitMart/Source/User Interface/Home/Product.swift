//
//  Product.swift
//  FruitMart
//
//  Created by nadan.choi on 2020/10/01.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import Foundation

struct Product {
    var id: String {
        return UUID().uuidString
    }
    
    let name: String
    let imageName: String
    let price: Int
    let description: String
    var isFavorite: Bool = false
}

extension Product: Decodable {}

extension Product: Identifiable {}


