//
//  OrderView.swift
//  Appetizer
//
//  Created by vibhu mishra on 02/07/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.myorder){appetizer in
                            AppetizerListCell(appetize: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.myorder.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())
                    Spacer()
                    Button{
                        print("button order")
                    }label: {
                        APButtons(title: "$\(order.totaPrice, specifier: "%.2f") - Place Order")
//                        APButtons(title: "hello button")
                    }.padding(.bottom,25)
                   
                }
                if order.myorder.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no item in your order. Please add an appetizer!")
                }
            }
            .navigationTitle("🥭 order")
        }
        
    }
}

#Preview {
    OrderView()
}
