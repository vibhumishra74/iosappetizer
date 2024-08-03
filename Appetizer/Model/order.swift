//
//  order.swift
//  Appetizer
//
//  Created by vibhu mishra on 30/07/24.
//

import Foundation

class Order:ObservableObject{
    @Published var myorder:[AppetizerModel] = []
    
    var totaPrice:Double{
        myorder.reduce(0){
            $0 + $1.price
        }
    }
}
