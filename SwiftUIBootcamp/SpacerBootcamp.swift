//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0){
//
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.mint)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.mint)
//
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.mint)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.mint)
//        }
//        .background(.yellow)
//       // .padding(.horizontal, 200)
//        .background(.blue)
        
      
        
        VStack {
            HStack(spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.mint)
                Image(systemName: "gear")
            }
            .font(.title)
          //  .background(.yellow)
            .padding(.horizontal)
           // .background(.blue)
            
            Spacer()
                .frame(width: 10)
                .background(.brown)
            
            Rectangle()
                .frame(height: 40)
        }
      
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
