//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 17/12/21.
//

import SwiftUI
//connect state variable from a parent view to a child view
struct BindingBootcamp: View {
    
    @State var bgColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            bgColor.ignoresSafeArea()
            
            VStack {
                
                Text(title)
                    .foregroundColor(.red)
                    .font(.largeTitle)
                
                
                ButtonView(bgCol: $bgColor, title: $title)
            }

        }
    }
}

//child view
struct ButtonView: View {
    
    @Binding var bgCol: Color
    @State var buttonColor: Color = Color.orange
    @Binding var title: String
    
    var body: some View {
        
        Button {
            bgCol = Color.yellow
            buttonColor = Color.pink
            title = "New title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(buttonColor)
                .cornerRadius(10)
            
        }
        
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
