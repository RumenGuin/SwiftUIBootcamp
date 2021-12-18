//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI
//use transition when you want something to 'coming on' or 'going off' the screen with animation
struct TransitionBootcamp: View {
    @State var showView : Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                
                Button("Button") {
                    
                   withAnimation
                    {
                        showView.toggle()
                    }
                }
                .padding(.top, 50)
                Spacer()
                
            }
            //canvas bugged
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.opacity(showView ? 1 : 0)
                    .transition(.asymmetric(insertion: .move(edge: .leading),
                                            removal: .move(edge: .bottom))) //running on simulator
                    //.transition(.opacity.animation(.easeInOut))
                    //.transition(.scale.animation(.easeInOut)) //working
                   // .transition(.move(edge: .leading)) //top or bottom is of the rectangle not the whole screen
                    
            }
                
            
           
        }
        .ignoresSafeArea()
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
