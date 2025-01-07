//
//  LoginView.swift
//  TodoList
//
//  Created by Tony on 9/6/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                
                // Header
                HeaderView(title: "To DO List", subtitle: "Get Things Done", angle: 15, background: .green)
                
                // Login Form
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address",text:$viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password",text:$viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(
                        title: "Log in",
                        background: .green){
                            // Attempt log in
                            viewModel.login()
                        }
                }
                .padding(.top,6)
                .offset(y:-80)
                
                
                // Create account
                VStack{
                    Text("New User ?")
                    NavigationLink(
                        "Create An Account",
                        destination: RegisterView()
                    )
                    .foregroundColor(.green)
                }
                .padding(.bottom,50)
                Spacer()
            }
        
        }
    }
}

#Preview {
    LoginView()
}
