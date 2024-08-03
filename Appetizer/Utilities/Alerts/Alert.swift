//
//  Alert.swift
//  Appetizer
//
//  Created by vibhu mishra on 07/07/24.
//

import SwiftUI

struct AlertItem : Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
//    - Network Alert
    
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server as invalid"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from server"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was issue connecting with server"), dismissButton: .default(Text("Ok")))
    
    static let unabletoComplet = AlertItem(title: Text("Server Error"), message: Text("unable to complet your request"), dismissButton: .default(Text("Ok")))
    
//       - Account Alert
    
    static let invalidForm = AlertItem(title: Text("Invalid form"), message: Text("Please ensure all the fields in the form are filled"), dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid email"), message: Text("please enter the currect email adress"), dismissButton: .default(Text("Ok")))
  
    static let userSaveSuccessfully = AlertItem(title: Text("Profile Save"), message: Text("Your Profile Information was Successfully Save"), dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile error"), message: Text("There was an Error saving or retrieving your profile."), dismissButton: .default(Text("Ok")))
    
    
}
