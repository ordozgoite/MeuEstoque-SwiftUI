//
//  ProductCell.swift
//  Meu_Estoque
//
//  Created by Victor Ordozgoite on 01/12/22.
//

import SwiftUI

struct ProductCell: View {
    
    @State var product: Product
    
    var body: some View {
        HStack {
            Image(uiImage: (product.image ?? UIImage(named: "noImage"))!)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(5)
            
            VStack(alignment: .leading) {
                Text(product.name)
                
                Text(String("\(product.quantity) \(product.unityText)"))
                    .padding(.top, 5)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Stepper("", value: $product.quantity)
            
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(name: "Coca-Cola Zero", quantity: 60, image: UIImage(named: "coke"), unity: .unidades))
    }
}
