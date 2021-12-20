//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 20/12/21.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelect: Bool = false
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelect ? Color.green : Color.red)
            
            Button {
                isSelect.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelect.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelect.toggle()
                })
                    
                
            
            Spacer()

        }
        .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
