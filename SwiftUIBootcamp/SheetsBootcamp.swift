//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            //CANNOT USE more than 1 sheet or fullScreenCover
            //but CAN use both together
            
            .fullScreenCover(isPresented: $showSheet, content: {
                //can't slide manually
                SecondScreen()
            })
            .sheet(isPresented: $showSheet) {
                //can slide manually
                //DO NOT add any conditional statements like if else
                SecondScreen()
            }

        }
    }
}

struct SecondScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    //.background(Color.white.cornerRadius(10))
                
            }
           

        }
        
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //SecondScreen()
    }
}
