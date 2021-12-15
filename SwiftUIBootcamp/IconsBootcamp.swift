//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
           // .scaledToFill()
           // .font(.caption)
           // .font(.system(size: 200))
         //   .foregroundColor(.green)
         //   .frame(width: 300, height: 300)
           // .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
