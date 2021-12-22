//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 22/12/21.
//

import SwiftUI

//ONCE IT IS ENVIRONMENTOBJECT, ALL OF THE VIEWS IN THE HIERARCHY WILL HAVE ACCESS TO IT

//we dont have to pass the object
//we have the access the EnvironmentObject all over the view


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData() {
       
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
    
}

//1st View
struct EnvironmentObjectBootcamp: View {
    
    //StateObject to that data persist
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel() //parenthesis to initialize
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) {item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                        
                }
            }
            .navigationTitle("Apple Devices")
        }
        //SUPPLIES AN OBSERVABLE OBJECT TO A VIEW SUBHIERARCHY
        .environmentObject(viewModel)
    }
}

//2nd View
struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View{
        ZStack{
            //bg
            Color.orange.ignoresSafeArea()
            
            //foreground
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
                
            }

            
            
           
            
            
        }
    }
}

//3rd View
struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //bg
            LinearGradient(gradient:
                            Gradient(colors: [Color.pink.opacity(0.3), Color.red.opacity(0.4)]),                         startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foreg
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.blue)
                .font(.headline)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedItem: "iPhone")
       // FinalView()
    }
}
