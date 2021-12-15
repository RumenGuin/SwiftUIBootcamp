//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
        // Ellipse()
        // Capsule(style: .circular)
        // Rectangle()
        RoundedRectangle(cornerRadius: 20)
           // .fill(Color.pink)
           // .foregroundColor(.pink)
           // .stroke(Color.blue, lineWidth: 20)   // -> outline
        //    .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [40]))
           .trim(from: 0.2, to: 1.0) //-> half circle(0.5 to 1.0)
//            .stroke(Color.purple, lineWidth: 8)
        
      
       
//
            .frame(width: 300, height: 200)
        // all modifiers are same for ellipse and circle and capsule
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
