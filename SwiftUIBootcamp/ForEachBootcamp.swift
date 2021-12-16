//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 16/12/21.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "hello", "hey"]
    let myString: String = "hello"
    
    var body: some View {
        VStack{
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is \(index)")
//                }
//            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
