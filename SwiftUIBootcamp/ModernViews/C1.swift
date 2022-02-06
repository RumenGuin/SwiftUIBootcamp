//
//  C1.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 06/02/22.
//

import SwiftUI

struct C1: View {
    var body: some View {
        ZStack {
            Color("bgColor").ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.system(size: 17))
                        .bold()
                        .foregroundColor(.white)
                }
                .background(
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("signUpButton1"), Color("signUpButton2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 130, height: 50)
                        .overlay(
                            Rectangle()
                                .stroke(Color.white.opacity(0.37), lineWidth: 6)
                                .offset(x: 3, y: 2)
                                .clipped()
                                .blur(radius: 5)
                        )
                        .overlay(
                            Rectangle()
                                .stroke(Color.black.opacity(0.37), lineWidth: 6)
                                .offset(x: -3, y: -3)
                                .clipped()
                                .blur(radius: 10)
                        )
                        .cornerRadius(20)
                        
                )
                .shadow(color: Color("shadow"), radius: 10, x: 0, y: 20)

            }
        }
    }
}

struct C1_Previews: PreviewProvider {
    static var previews: some View {
        C1()
    }
}
