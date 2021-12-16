//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 16/12/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
//
//
        
        
        
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
            //.ignoresSafeArea(edges: .top)
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
