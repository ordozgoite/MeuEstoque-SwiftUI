//
//  ProductsListViewModel.swift
//  Meu_Estoque
//
//  Created by Victor Ordozgoite on 13/12/22.
//

import Foundation
import UIKit

class ProductsListViewModel: ObservableObject {
    
    @Published var products = [ProductViewModel]()
    
    func getAllProducts() {
        var products = [
            Product(name: "Garrafão de água 20L", quantity: 5, image: UIImage(named: "water"), unity: .unidades),
            Product(name: "Biscoito Maizena", quantity: 30, image: UIImage(named: "maizena"), unity: .unidades),
            Product(name: "Coca-Cola zero", quantity: 20, image: UIImage(named: "coke"), unity: .unidades)
        ]
        
        self.products = products.map(ProductViewModel.init)
    }
}

struct ProductViewModel {
    
    let product: Product
    
    var name: String {
        product.name
    }
    
    var quantity: Int {
        product.quantity
    }
    
    var image: UIImage? {
        product.image
    }
    
    var unity: UnitMeasure {
        product.unity
    }
}
