//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 19/12/21.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var bgColor: Color = Color.yellow
    
    @State var alertTypes: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
        
    }
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            VStack(spacing: 30) {
                Button("B1") {
//                    alertTitle = "error uploading video"
//                    alertMessage = "The video could not be uploaded"
                    alertTypes = .error
                    showAlert.toggle()
                }
                
                Button("B2") {
//                    alertTitle = "Video uploaded"
//                    alertMessage = "Your 🥸 video has been uploaded successfully"
                    alertTypes = .success
                    showAlert.toggle()
                }
                
            }
             .alert(isPresented: $showAlert) {
               getAlert()
             }
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertTypes {
        case .error:
            return Alert(title: Text("Error"))
        case .success:
            return Alert(title: Text("Success"), message: nil, dismissButton: .default(Text("OK"), action: {
                bgColor = .green
            }))
        default:
            return Alert(title: Text(" default"))
        }
        
        
//        return Alert(title: Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .default(Text("OK")))
        
        
//            //Alert(title: Text("There was an error"))
//            Alert(title: Text("Title"),
//                  message: Text("Message to describe error"),
//                  primaryButton: .destructive(Text("Delete"), action: {
//                            bgColor = .red
//            }),
//                  secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
