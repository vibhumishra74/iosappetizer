//
//  ContentView.swift
//  Appetizer
//
//  Created by vibhu mishra on 02/07/24.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order:Order
    var body: some View {
        TabView {
            AppetizerListView()
                           .tabItem {
                               Label("Home", systemImage: "house")
                           }

            AccountView()
                        .tabItem {
                            Label("Account", systemImage: "person")
                }
            OrderView()
                        .tabItem {
                                Label("Order", systemImage: "bag")
                            }
                        .badge(order.myorder.count)
        }
        
    }
}
//https:seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers
//#Preview {
//    AppetizerTabView()
//}
