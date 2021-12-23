//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI
//List, TabView -> badge works
struct BadgesBootcamp: View {
    var body: some View {
        
//        List{
//            Text("Hello World")
//                .badge("New Items")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//        }
        
        
        TabView{
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(5)

            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Hello")
                }
                .badge("NEW")

            Color.red
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Hello")
                }

        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
