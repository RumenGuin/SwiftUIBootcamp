//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("rumen guin?".capitalized)
 //           .font(.body)
//            //.fontWeight(.semibold)
//            .bold()
//            //.underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
           // .font(.system(size: 24, weight: .semibold, design: .serif))
          //  .baselineOffset(50) -> spacing between each line
           // .kerning(10) -> spacing between each letters
          //  .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
