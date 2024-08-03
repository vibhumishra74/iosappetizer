//
//  APButtons.swift
//  Appetizer
//
//  Created by vibhu mishra on 27/07/24.
//

import SwiftUI

struct APButtons: View {
    var title:LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButtons(title: "9.99")
}
