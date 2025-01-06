//
//  TLButton.swift
//  TodoList
//
//  Created by Tony on 1/6/25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }

        }
      
    }
}

#Preview {
    TLButton(title: "Title", background: .green){
        //action
    }
}
