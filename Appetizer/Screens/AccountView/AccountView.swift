//
//  AccountView.swift
//  Appetizer
//
//  Created by vibhu mishra on 02/07/24.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                Form{
                    Section(header: Text("PERSONAL INFO")){
                        TextField("First Name", text: $viewModel.user.firstname)
                        TextField("Last Name", text: $viewModel.user.lastname)
                        TextField("Email", text: $viewModel.user.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .autocorrectionDisabled(true)
                        DatePicker("Birthday",selection: $viewModel.user.date,displayedComponents: .date)
                        
                        Button{
                            print("button press")
                            viewModel.saveChnages()
                        }label: {
                            Text("Save Changes")
                        }
                    }
                    Section(header: Text("REQUEST")){
                        Toggle("Extra Napkin", isOn: $viewModel.user.extraNapkin)
                        
                        Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefill)
                        
                    }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
                
                .navigationTitle("❤️ Account")
            }
        }
        .onAppear{
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem){alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
