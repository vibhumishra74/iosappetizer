//
//  AppetizerList.swift
//  Appetizer
//
//  Created by vibhu mishra on 02/07/24.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizer){appetize in
                    AppetizerListCell(appetize: appetize)
                        .onTapGesture {
                            viewModel.isShowingDeatilsView = true
                            viewModel.selectedAppetizer = appetize
                        }
                }
                    .navigationTitle("🍟 Appetizer")
                    .listStyle(.plain)
                    .disabled(viewModel.isShowingDeatilsView)
            }.onAppear{
                viewModel.getappetizers()
            }
            .blur(radius: viewModel.isShowingDeatilsView ? 20 : 0)
            if viewModel.isShowingDeatilsView{
                AppetizerDetailView(isShowingDeatilsView: $viewModel.isShowingDeatilsView, appetizer: viewModel.selectedAppetizer!)
            }
            if viewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem){alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
       
        
    }
    
}

#Preview {
    AppetizerListView()
}
