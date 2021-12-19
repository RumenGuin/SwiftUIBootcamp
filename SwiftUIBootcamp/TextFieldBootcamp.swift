//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 19/12/21.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Type Something", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(textIsAppropriate() ? .blue : .red)
                    .font(.headline)
                    .padding(.top, 25)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                   
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .padding(.horizontal)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                    
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("TextFireld Bootcamp")
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        //check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
