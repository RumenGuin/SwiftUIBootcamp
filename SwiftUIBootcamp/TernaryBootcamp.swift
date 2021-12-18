//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ?  "Staring state" : "ending state")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 50 : 200 )
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
