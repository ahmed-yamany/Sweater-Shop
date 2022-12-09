//
//  CartManager.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 09/12/2022.
//

import Foundation

class CartManager: ObservableObject{
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total = total + product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter { $0.id == product.id }
        total = total - product.price
    }
    
}
