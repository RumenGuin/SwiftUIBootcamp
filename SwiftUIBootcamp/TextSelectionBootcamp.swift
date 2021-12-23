//
//  TextSelectionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .textSelection(.enabled) //all text are disabled by default
        //users can copy these texts
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
