//
//  ContentView.swift
//  Meu_Estoque
//
//  Created by Victor Ordozgoite on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var products: [Product] = [
        Product(name: "Garrafão de água 20L", quantity: 5, image: UIImage(named: "water"), unity: .unidades),
        Product(name: "Biscoito Maizena", quantity: 30, image: UIImage(named: "maizena"), unity: .unidades),
        Product(name: "Coca-Cola zero", quantity: 20, image: UIImage(named: "coke"), unity: .unidades)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(products, id: \.name) { product in
                    ProductCell(product: product)
                }
            }
            
            .navigationTitle("Estoque")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
