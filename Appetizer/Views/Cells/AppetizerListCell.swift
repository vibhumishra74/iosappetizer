//
//  AppetizerListCell.swift
//  Appetizer
//
//  Created by vibhu mishra on 03/07/24.
//

import SwiftUI

struct AppetizerListCell: View {
    var appetize:AppetizerModel
    var body: some View {
        HStack{
//            Image("blackened-shrimp")
            appetizerRemoteImage(urlString: appetize.imageURL)
//                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack (alignment: .leading,spacing: 5){
                Text(appetize.name)
                    .font(.title2 )
                    .fontWeight(.medium)
                
                Text("$\(appetize.price,specifier: "% .2 f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .font(.subheadline)
            }.padding(.leading)
            
        }
    }
}

#Preview {
    AppetizerListCell(appetize: MockData.sampleAppetizer)
}
