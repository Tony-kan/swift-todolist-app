//
//  RegisterView.swift
//  TodoList
//
//  Created by Tony on 9/6/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack{
            
            // Header
            HeaderView(title: "Register", subtitle: "Start organising Todos", angle: -15, background: .green)
            
            Form {
                TextField("Full Name",text:$viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address",text:$viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password",text:$viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                
                TLButton(
                    title: "Create Account",
                    background: .green){
                        // Attempt to register
                    }
                    .padding()
            }
            
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
