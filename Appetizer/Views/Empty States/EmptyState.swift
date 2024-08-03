//
//  EmptyState.swift
//  Appetizer
//
//  Created by vibhu mishra on 30/07/24.
//

import SwiftUI

struct EmptyState: View {
    let imageName:String
    let message:String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50.0)
          
        }
       
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "this is degault long text message to test multiline")
}
