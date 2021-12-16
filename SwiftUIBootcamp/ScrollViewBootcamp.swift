//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 16/12/21.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
//        ScrollView(.horizontal, showsIndicators: false){
//            HStack{
//
//                ForEach(0..<50) { index in
//
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300,height: 300)
//
//                }
//            }
//        }
        
        
        ScrollView{
            //LazyV/HStack is more efficent then VStack/HStack because it only loads/creates the item that is on the screen
            //For example if we have here 100 items in Vstack. VStack will load all the items at once (not efficent because what if the user open the screen and never scroll to the bottom). So we want to load only the item that is shown on the screen. So LazyVStack is better than VStack.
            LazyVStack{
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<20) {index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
