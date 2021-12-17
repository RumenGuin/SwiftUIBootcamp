//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 17/12/21.
//

import SwiftUI

struct StateBootcamp: View {
    //to make view know this var gonna change
    @State var bgColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            bgColor.ignoresSafeArea()
            
            //content
            VStack(spacing: 20){
                
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1") {
                        bgColor = .purple
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        bgColor = .orange
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
