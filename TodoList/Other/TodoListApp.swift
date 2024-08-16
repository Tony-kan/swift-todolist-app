//
//  TodoListApp.swift
//  TodoList
//
//  Created by Tony on 8/16/24.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
