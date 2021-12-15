//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.pink, Color.green]),
//                               startPoint: .leading,
//                               endPoint: .trailing)
//
//                RadialGradient(gradient: Gradient(colors: [Color.pink, Color.blue]),
//                              center: .topLeading,
//                              startRadius: 5,
//                              endRadius: 400)
                //end radius same as frame height/width if center is .center
                
                
                AngularGradient(colors: [Color.purple, Color.mint],
                                center: .topLeading,
                                angle: .degrees(180 + 45))
                
                
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
