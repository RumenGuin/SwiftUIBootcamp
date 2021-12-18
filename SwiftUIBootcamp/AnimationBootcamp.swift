//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(Animation
                                .default
                                .repeatForever(autoreverses: true)
                               // .repeatCount(5, autoreverses: true)
                ){

                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius:isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height:isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            //offset moves the object left,right, up or down
                .offset( y: isAnimated ? 300 : 0) //move down by 300
//                .animation((Animation
//                                .default
//                                .repeatForever(autoreverses: true)
//                                //.repeatCount(5, autoreverses: true)
//                ), value: isAnimated)
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
