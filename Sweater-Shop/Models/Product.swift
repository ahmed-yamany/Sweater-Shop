//
//  Product.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 08/12/2022.
//

import Foundation

struct Product: Identifiable{
    let id =  UUID()
    let name: String
    let image: String
    let price: Int
}


let products = [
    Product(name: "Red Sweater", image: "s1", price: 225),
    Product(name: "Red Sweater", image: "s2", price: 225),
    Product(name: "Red Sweater", image: "s3", price: 225),
    Product(name: "Red Sweater", image: "s4", price: 225),
    Product(name: "Red Sweater", image: "s5", price: 225),
    Product(name: "Red Sweater", image: "s6", price: 225),
    Product(name: "Red Sweater", image: "s7", price: 225),
]
