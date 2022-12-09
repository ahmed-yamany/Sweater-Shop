//
//  ProductRow.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 09/12/2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    
    let product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 55)
            
            VStack(alignment: .leading){
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
            }
            
            Spacer()
            Button {
                cartManager.removeFromCart(product: product)
            } label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            }

        }
        .padding(.horizontal)
        .frame(height: 77)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: products[3])
    }
}
