//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 16/12/21.
//

import SwiftUI

//Row runs Horizontal (RH)  ->LazyHGrid takes row
//Column runs Vertical (CV) ->LazyVGrid takes column

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        
        GridItem(.flexible(), spacing: 6), //spacing between column
        GridItem(.flexible(),spacing: 6),
        GridItem(.flexible(),spacing: 6)
    
//        GridItem(.adaptive(minimum: 10, maximum: 300)),
//        GridItem(.adaptive(minimum: 150, maximum: 300))
        
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
        
//        GridItem(.fixed(60), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(60), spacing: nil, alignment: nil),
//        GridItem(.fixed(150), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6, //spacing between row
                      pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        .background(.blue)
                        .padding()
                }
                
                
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        .background(.red)
                        .padding()
                }

            }
                
            
           
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
