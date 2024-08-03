//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by vibhu mishra on 28/07/24.
//

import SwiftUI


final class AccountViewModel:ObservableObject{
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChnages(){
        guard isValidForm  else {return}
        do{
            let encoder = JSONEncoder()
            let data = try encoder.encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccessfully
        }catch{
            alertItem = AlertContext.invalidUserData
        }
       
    }
    
    func retrieveUser(){
        guard let userData = userData else { return }
        
        do{
            let decoder = JSONDecoder()
            user = try decoder.decode(User.self, from: userData)
        }catch{
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm:Bool{
        guard !user.firstname.isEmpty && !user.lastname.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    
  
}
