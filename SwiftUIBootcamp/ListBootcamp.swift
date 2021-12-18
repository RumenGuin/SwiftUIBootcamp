//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 18/12/21.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
    "tomato", "potato", "onion", "carrot"
    ]
    
    
    var body: some View {
        
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                
                    }
                    .onDelete(perform: Delete)
                    .onMove(perform: Move)
                    .listRowBackground(Color.blue)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.purple)
                }
                
                Section {
                    ForEach(veggies, id: \.self) {veggi in
                        Text(veggi.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }

                
            }
           // .tint(.purple)
           // .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                    
            )
            
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            Add()
        })
    }
    
    func Delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func Move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func Add() {
        fruits.append("Coconut")
    }
}


struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}

