//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 22/12/21.
//

import SwiftUI
//custom data type -> Struct
struct UserModel: Identifiable {  // Identifiable -> we have to put id to use in list
    let id: String = UUID().uuidString //random user id
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
    //"Rumen", "Manotosh", "Arpan", "Rita"
        
        UserModel(displayName: "Rumen", userName: "rumen2k", followerCount: 0, isVerified: false),
        UserModel(displayName: "Shroud", userName: "shroudGod", followerCount: 1000, isVerified: true),
        UserModel(displayName: "Ninja", userName: "ninjaFornite", followerCount: 2000, isVerified: true),
        UserModel(displayName: "Ferg", userName: "iFergie", followerCount: 500, isVerified: true)
        
        
    ]
    var body: some View {
        NavigationView{
            List {
                
                ForEach(users) {user in
                    HStack (spacing: 15){
                          Circle()
                               .frame(width: 35, height: 35)
                       // Text(user.id) //custom random uuid by xcode
                        VStack(alignment: .leading){
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                       
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }

            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
