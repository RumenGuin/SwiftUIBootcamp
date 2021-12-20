//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 20/12/21.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "18"
    var body: some View {
        
        Picker (selection: .constant(1)){
            Text("1").tag(1)
            Text("2").tag(2)
        } label: {
            Text("Picker")
        }
        .pickerStyle(MenuPickerStyle())

        
//        VStack {
//
//            HStack {
//                Text("Age: ")
//                Text(selection)
//            }
//
//            Picker(selection: $selection ) {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//
//                        .tag("\(number)")
//                }
//            } label: {
//                Text("picker")
//            }
//
//           // .background(.red)
//        }

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
