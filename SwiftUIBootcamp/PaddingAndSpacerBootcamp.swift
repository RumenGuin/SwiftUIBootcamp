//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .padding(.leading, 20)
//                .background(.brown)
//
            Text("This is multiple lines and we will align the text to the leading edge. As usal I am Rumen Guin. I am in 3rd sem and in GCECT lul college. No it's the best.")
//
        }
        
        .padding()
        .padding(.vertical, 10)
        .background(
                Color.white
                    .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
            
        
        )
        .padding(.horizontal, 20)
        
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
