//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
             //   Color.primary -> black in light mode, white in dark mode
                
                //Color Literal -> not available in iOS 15
               
               // Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color.purple.opacity(0.5), radius: 10, x: 20, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            
    }
}
