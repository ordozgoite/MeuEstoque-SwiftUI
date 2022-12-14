//
//  ProductsListScreen.swift
//  Meu_Estoque
//
//  Created by Victor Ordozgoite on 13/12/22.
//

import SwiftUI

struct ProductsListScreen: View {
    
    @ObservedObject var productsListVM = ProductsListViewModel()
    
    var body: some View {
        ProductsListView(products: productsListVM.products)
    }
}

struct ProductsListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListScreen()
    }
}
