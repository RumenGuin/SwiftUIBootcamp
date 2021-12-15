//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 15/12/21.
//

import SwiftUI

struct StacksBootcamp: View {
    //VStack -> Vertical(|| top to bottom)
    //HStack -> Horizontal (<--> left to right)
    //ZStack -> zIndex (back to front)
    var body: some View {
//        HStack(alignment: .bottom, spacing: 0){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        }
        
        // if you put ZStack green(last one) will be seen only because its a stack so the last one will be on top
        
        
        
        ZStack(alignment: .top){
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30){
                
                Rectangle()
                    .fill(Color.red)
                .frame(width: 150, height: 150)
            
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 16) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 40, height: 40)
                }
                .background(Color.white)
                
                HStack(alignment: .top){
                    Text("Items in your cart:")
                        .font(.title3)
                        .foregroundColor(.white)
                    Text("5")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                }
        
            }
            .background(Color.black)
                
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
