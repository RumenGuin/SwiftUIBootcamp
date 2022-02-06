//
//  G1.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 06/02/22.
//

import SwiftUI

struct G1: View {
    var body: some View {
        ZStack {
            Color.purple.opacity(0.58).ignoresSafeArea()
            
            Circle()
                .foregroundColor(.blue.opacity(0.38))
                .offset(x: -100, y: -150)
                .blur(radius: 8)
            
            Circle()
                .foregroundColor(.red.opacity(0.38))
                .offset(x: 200, y: -30)
                .blur(radius: 8)
            
            VStack {
                Text("GlassMorphism")
                    .font(.title2)
                    .bold()
            }
            .padding()
            .frame(width: 300, height: 400)
            .foregroundColor(Color.black.opacity(0.8))
            .background(
                Color.white.opacity(0.5)
                    .frame(width: 300, height: 400)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                    .blur(radius: 1)
            )
            
            
        }
    }
}

struct G1_Previews: PreviewProvider {
    static var previews: some View {
        G1()
    }
}
