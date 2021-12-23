//
//  ButtonStyleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack{
            Button("BUTTON") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.plain)
            
            Button("BUTTON") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderless)
            
            Button("BUTTON") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.bordered)
            
            Button("BUTTON") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            
            Button {
                
            } label: {
                Text("BUTTON")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }
        
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
            .preferredColorScheme(.dark)
    }
}
