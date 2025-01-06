//
//  HeaderView.swift
//  TodoList
//
//  Created by Tony on 1/6/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        
        ZStack{
                           RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                               .rotationEffect(Angle(degrees: angle))
                           
                           
                           VStack{
                               Text(title)
                                   .font(.system(size:50))
                                   .foregroundColor(.white)
                                   .bold()
                               
                               Text(subtitle)
                                   .font(.system(size: 30))
                                   .foregroundColor(.white)
                           }
                           .padding(.top,50)
                           
                           
                       }
                       .frame(width: UIScreen.main.bounds.width * 3,height: 450)
                       .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .green)
}
