//
//  LoadingView.swift
//  Appetizer
//
//  Created by vibhu mishra on 07/07/24.
//

import SwiftUI

struct ActivityIndicator:UIViewRepresentable{
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityViewindicator = UIActivityIndicatorView(style: .large)
        activityViewindicator.color = UIColor.brandPrimarys
        activityViewindicator.startAnimating()
        return activityViewindicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}


struct LoadingView:View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ActivityIndicator()
        }
    }
}
