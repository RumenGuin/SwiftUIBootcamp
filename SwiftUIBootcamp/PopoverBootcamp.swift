//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI
//sheets, animations, transitions
struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                Spacer()
            }
            
            //Method 1-> Sheets
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            
            //Method 2-> transitions
            
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showNewScreen)
//
//                }
//            }
//            .zIndex(2)
            
            
            //Method 3 -> Animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.pink.ignoresSafeArea()
            Button {
               // presentationMode.wrappedValue.dismiss() //-> for sheet
                showNewScreen.toggle() //work in simulator not in preview(transition)
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.leading, 30)
                    .padding(.top, 30)
            }

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
       // NewScreen()
    }
}
