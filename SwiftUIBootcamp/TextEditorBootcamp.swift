//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 19/12/21.
//

import SwiftUI
//texteditor for multiple lines
struct TextEditorBootcamp: View {
    @State var textEditortext: String = "Write.."
    @State var savedText: String = ""
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
              TextEditor(text: $textEditortext)
                    .frame(height: 250)
                    .foregroundColor(.blue)
               
                    .colorMultiply(Color.pink) //to change bg color
                    .cornerRadius(10)
                
                Button {
                    savedText = textEditortext
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.teal)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.gray.opacity(0.3))
            .navigationTitle("Texteditor")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
