//
//  getappetizer.swift
//  Appetizer
//
//  Created by vibhu mishra on 07/07/24.
//

import Foundation

final class AppetizerListViewModel:ObservableObject {
    @Published var appetizer : [AppetizerModel] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    @Published var isShowingDeatilsView = false
    @Published var selectedAppetizer: AppetizerModel?
    
    func getappetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers{ [self] result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result{
                case .success(let appetizer):
                    self.appetizer = appetizer
                case .failure(let error):
                    
//                    print(error.localizedDescription)
                    switch error{
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURl:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponde:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplet:
                        alertItem = AlertContext.unabletoComplet
                    }
                }
            }
        }
    }
}
