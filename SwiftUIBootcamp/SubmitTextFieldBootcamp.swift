//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder", text: $text)
            .submitLabel(.join)
            .onSubmit {
                print("Rumen")
            }
        
        TextField("Placeholder", text: $text)
            .submitLabel(.next)
            .onSubmit {
                print("Rumen")
            }
        
        TextField("Placeholder", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Rumen")
            }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
