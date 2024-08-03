//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by vibhu mishra on 26/07/24.
//

import SwiftUI

struct AppetizerDetailView: View {
//    @StateObject var  viewModel = AppetizerListViewModel()
    @Binding var isShowingDeatilsView : Bool
    let appetizer: AppetizerModel
    @EnvironmentObject var order:Order
    var body: some View {
        VStack{
//            Image("blackened-shrimp")
            appetizerRemoteImage(urlString: appetizer.imageURL)
//                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height:225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                  
                }
            }
            Spacer()
            Button{
                order.myorder.append(appetizer)
                isShowingDeatilsView = false
            } label: {
                APButtons(title: "$\(appetizer.price,specifier: "%.2f") - Add To Order")
            }
            .padding(.bottom,30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 4)
        .overlay(Button{
//            viewModel.isShowingDeatilsView = false
            isShowingDeatilsView = false
        }label: {
          XDismissButon()
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(isShowingDeatilsView: .constant(true), appetizer: MockData.sampleAppetizer)
}


struct NutritionInfo: View {
    let title: String
    let value : Int
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
