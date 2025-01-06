//
//  RegisterViewViewModel.swift
//  TodoList
//
//  Created by Tony on 9/6/24.
//

import Foundation


class RegisterViewViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init(){}
}
