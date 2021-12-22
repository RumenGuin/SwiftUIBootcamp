//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 22/12/21.
//

import SwiftUI
//class for all of the data behind the scene for app -> View Model

//Model
struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

//ViewModel is Observable
//Observable because it has to be observed by view
class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []  //@Published == @State in class
    @Published var isLoading: Bool = false
    
    //otherwise fruits are reloading every time we go to the screen
    init() {
        getFruits()
    }
    
    func deleteFruits(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 20)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
}


struct ViewModelBootcamp: View {

    //to tell the View to observe from View Model -> @ObservedObject/@StateObject
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    /*
     StateObject is same as ObservedObject except
     IF THE VIEW RELOADS/RE-RENDERS @StateObject WILL PERSIST/STAY.
     @StateObject will not Refresh
     BUT @ObservedObject WILL NOT PERSIST
     StateObject >> ObservedObject
     
     @StateObject -> use this on first screen/init
     @ObservedObect -> use this for subviews
     */
    
    
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading {
                    ProgressView()
                }else{
                    
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                        
                    }
                    .onDelete { indexSet in
                        fruitViewModel.deleteFruits(index: indexSet)
                    }
                }
               
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination:
                                                    RandomScreen(fruitViewModel: fruitViewModel),
                                                   label: {
                                        Image(systemName: "arrow.right")
                                        .font(.title)
            }))

        }
    }
    
   
}

//subview
struct RandomScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            
           
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
            }
            
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
       // RandomScreen()
    }
}
