//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
            Button("Is Loading: \(isLoading.description)", action: {
                isLoading.toggle()
            })
            if isLoading {
                ProgressView()
            }
            
            
            
//            Button("Circle Button:  \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            //else
//            if showRectangle{
//                Rectangle()
//                    .frame(width: 100, height: 100).cornerRadius(10)
//            }
//            if showCircle || showRectangle{
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
//
//           Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
