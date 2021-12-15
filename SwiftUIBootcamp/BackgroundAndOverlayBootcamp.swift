//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//
//            .background(
//
//                //Color.red
//                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//
//
//            ) //background takes View(screen, text, shape, color)
//
//            .background(
//
//            Circle()
//                .fill(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.white]), startPoint: .leading, endPoint: .trailing))
//                .frame(width: 120, height: 120)
//            )
        
        
        //overlay -> on top like ZStack
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("9")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//
//            )
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//
//            )
//
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)
                 )
                    .frame(width: 100, height: 100)
                    .shadow(color: .pink.opacity(0.5), radius: 10, x: 0, y: 10)
                
                
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                        
                        
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                        )
                        .shadow(color: .pink.opacity(0.5), radius: 10, x: 5, y: -5)
                        
                        ,alignment: .topTrailing
                    )
                
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
