//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 17/12/21.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var bgColor: Color = .purple
    
    var body: some View {
        ZStack{
            //bg
            bgColor.ignoresSafeArea()
            
            //content
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonpressed()
            } label: {
                   Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }

    }
    
    func buttonpressed()  {
        bgColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
