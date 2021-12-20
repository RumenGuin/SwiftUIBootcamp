//
//  ifLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 20/12/21.
//

import SwiftUI
//unwarap safely
struct ifLetGuardBootcamp: View {
    @State var currentUserID: String? = "@user123"//nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        NavigationView {
            VStack{
                
                Text("Practicing Swift")
                //unwrapping optionals
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                //DO NOT FORCE UNWRAP
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
               //loadData()
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error, there is no user ID"
        }
    }
    
  //  loadData() == loadData2() -> both are same
    
    func loadData2() {
        guard let userID = currentUserID
        else {
            //if this is wrong, this part will run (else part)
            displayText = "Error, there is no user ID"
            return
        }
        
        //if true then this part will run
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User ID: \(userID)"
            isLoading = false
        }
    }
}

struct ifLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ifLetGuardBootcamp()
    }
}
