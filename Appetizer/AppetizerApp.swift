//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by vibhu mishra on 02/07/24.
//

import SwiftUI

@main
struct AppetizerApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
