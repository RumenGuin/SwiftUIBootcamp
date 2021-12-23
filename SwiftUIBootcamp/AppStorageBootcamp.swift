//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI
//with AppStorage we can save small pieces of data such as user's name, user's id
//NOT FOR LARGE DATABASE
struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUsername: String?
    var body: some View {
        VStack(spacing: 20){
            Text(currentUsername ?? "Add Name Here")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Guin"
                currentUsername = name
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
