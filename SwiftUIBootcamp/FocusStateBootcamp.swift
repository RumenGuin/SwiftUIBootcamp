//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI
//cmd + K -> Toggle keyboard in simulator

struct FocusStateBootcamp: View {
    
    enum OnBoardingField: Hashable{
        case username
        case password
    }
    
  //  @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
  //  @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnBoardingField?
    
    var body: some View {
        VStack(spacing: 20){
            TextField("Add Your Name", text: $username)
                .focused($fieldInFocus, equals: .username)
                //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3).cornerRadius(10))
            
            
            SecureField("Add Your Password", text: $password)
                .focused($fieldInFocus, equals: .password)
              //  .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3).cornerRadius(10))
            
            //control+cmd+spacebar = emoji
            Button("SIGN UP 🍎") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid{ //username typed already
                    fieldInFocus = .password
                   // usernameInFocus = false //because focus now on password textfield
                  //  passwordInFocus = true  // type the password now, username filled already
                } else { //password type already or nothing typed yet
                    fieldInFocus = .username
                  //  usernameInFocus = true
                  //  passwordInFocus = false
                }
            }
            
                
            //this button will open the keyboard, we dont have to select the textfield
//            Button("Toggle focus State"){
//                usernameInFocus.toggle()
//            }
               
        }
        .padding(40)
        
        //keyboard will pop up automatically when usernameInFocus = true
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
