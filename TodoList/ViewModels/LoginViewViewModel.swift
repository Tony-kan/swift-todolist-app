//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by Tony on 9/6/24.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init(){}
}
