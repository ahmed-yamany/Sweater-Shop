//
//  CartView.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 09/12/2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack{
                    Text("your cart total is")
                    Spacer()
                    Text("$\(cartManager.total)")
                }
            }else{
                Text("You cart is Empty")
            }
        }
        .navigationTitle("My Cart")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
