//
//  Product.swift
//  Meu_Estoque
//
//  Created by Victor Ordozgoite on 01/12/22.
//

import Foundation
import SwiftUI

struct Product {
    var name: String
    var quantity: Int
    var image: UIImage?
    var unity: UnitMeasure
    
    var unityText: String {
        switch unity {
        case .unidades:
            return "unidades"
        case .metros:
            return "metros"
        case .quilogramas:
            return "quilogramas"
        }
    }
}

enum UnitMeasure {
    case metros
    case quilogramas
    case unidades
}
