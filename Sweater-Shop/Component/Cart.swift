//
//  Cart.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 09/12/2022.
//

import SwiftUI

struct Cart: View {
    @EnvironmentObject var cartManager: CartManager
    
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(7)

            if numberOfProducts != 0{
                Text(numberOfProducts.formatted())
                    .font(.subheadline)
                    .padding(3)
                
                    .foregroundColor(.white)
                    .background(.red)
                    .mask(Circle())
            }
        }
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart(numberOfProducts: 1)
    }
}
