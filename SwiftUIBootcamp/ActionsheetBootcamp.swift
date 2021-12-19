//
//  ActionsheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 19/12/21.
//
//GONNA DEPRICATE ActionSheet
import SwiftUI

struct ActionsheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetoption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    
    var body: some View {
        
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                   // actionSheetoption = .isOtherPost
                    actionSheetoption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .tint(.primary)
                }

                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet) {
           getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .destructive(Text("Cancel")) {
            
        }
        
        switch actionSheetoption {
        case .isMyPost:
            return ActionSheet(title: Text("What you like to do?"), message: nil, buttons: [shareButton,deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(title: Text("What you like to do?"), message: nil, buttons: [shareButton,reportButton, cancelButton])
        }
        
        
       // return ActionSheet(title: Text("Title"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Delete"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(title: Text("Title"),
//                           message: Text("Message"),
//                           buttons: [button1, button2, button3])
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
