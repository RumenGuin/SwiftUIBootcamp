//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello, World!") {
                    MyOtherScreen()
                }
                
                
                Text("hello world")
                Text("hello world")
                Text("hello world")
            }
            .navigationTitle("All Inboxes")
           // .navigationBarTitleDisplayMode(.automatic) //best
            //.navigationBarHidden(true)
            .navigationBarItems(leading: //gonna depricated
                                    
                                HStack{
                                    Image(systemName: "person.fill")
                                    Image(systemName: "flame.fill")
                
                                },
                                
                                trailing:
                                    NavigationLink(destination: {
                                    MyOtherScreen()
                                    }, label: {
                                        Image(systemName: "gear").accentColor(.red)
            }))
            
        }
    }
}

struct MyOtherScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack(spacing: 30){
                Button("back button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here") {
                    Text("3rd screen")
                }
            }
            
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
