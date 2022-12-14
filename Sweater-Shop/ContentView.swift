//
//  ContentView.swift
//  Sweater-Shop
//
//  Created by Ahmed Yamany on 08/12/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager: CartManager = CartManager()
    
    let columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(products, id: \.id) { product in
                        ProductView(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .toolbar(content: {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    Cart(numberOfProducts: cartManager.products.count)
                        .environmentObject(cartManager)
                }

            })
            .navigationTitle("Sweater Shop")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
