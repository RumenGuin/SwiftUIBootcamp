//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 19/12/21.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }
        .padding()
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
