//
//  ProductsListView.swift
//  Meu_Estoque
//
//  Created by Victor Ordozgoite on 13/12/22.
//

import SwiftUI

struct ProductsListView: View {
    
    var products: [ProductViewModel]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(products, id: \.name) { product in
                    ProductCell(product: product)
                }
            }
            .toolbar {
                NavigationLink(destination: AddProductScreen()) {
                    Image(systemName: "plus")
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle("Estoque")
        }
    }
}



struct ProductsListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListView(products:
                            [
                                ProductViewModel(product: Product(name: "Garrafão de água 20L", quantity: 5, image: UIImage(named: "water"), unity: .unidades))
                            ]
        )
    }
}
