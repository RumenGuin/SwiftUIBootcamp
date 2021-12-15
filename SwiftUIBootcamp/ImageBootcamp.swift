//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
            //.renderingMode(.template)
            .resizable()
           // .aspectRatio( contentMode: .fit) <-> .scaledToFit()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .foregroundColor(.purple)
           // .cornerRadius(30)
//            .clipShape(
//               // Circle()
//              //  Ellipse()
//                RoundedRectangle(cornerRadius: 25)
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
