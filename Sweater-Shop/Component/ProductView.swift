//
//  ProductView.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 08/12/2022.
//

import SwiftUI

struct ProductView: View {
    @EnvironmentObject var cartManager: CartManager
    
    let product: Product
    var body: some View {
        ZStack (alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .frame(width: 180)
                    .cornerRadius(20)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    Text(product.price.formatted() + "$")
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.black)
                .background(.ultraThinMaterial)
                .cornerRadius(20)

            }
            .frame(width: 180, height: 250)

            Button {
                cartManager.addToCart(product: product)
                
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .background(.black)
                    .foregroundColor(.white)
                    .mask(Circle())
                    .padding()
            }

        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: products[0])
    }
}
