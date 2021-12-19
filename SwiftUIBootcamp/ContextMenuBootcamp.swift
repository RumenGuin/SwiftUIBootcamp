//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 19/12/21.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var bgColor: Color = .teal
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Rumen's Home")
                .font(.headline)
            Text("How to use context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor).cornerRadius(30)
        .contextMenu {
           
            Button {
                bgColor = .yellow
            } label: {
                Label("Share", systemImage: "flame.fill")
            }
            
            Button {
                bgColor = .red
            } label: {
                Text("Report")
            }
            
            Button {
                bgColor = .green
            } label: {
                HStack{
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }


            Text("menu Item 2")
            Text("menu Item 3")
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
