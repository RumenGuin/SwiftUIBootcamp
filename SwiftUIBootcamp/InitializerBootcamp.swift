//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 16/12/21.
//

import SwiftUI

struct InitializerBootcamp: View {
    ///properties
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init( ct: Int, name: String) {parameters
///        self.property = parameter
//        self.backgroundColor = bgColor
//        self.count = ct
//        self.title = name
//
//        if title == "Apples" {
//            self.backgroundColor = .red
//        }
//        else{
//            self.backgroundColor = .orange
//        }
//    }
    
    init(ct: Int, fruit: Fruit) {//parameters
        self.count = ct
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerBootcamp(ct: 12, fruit: .orange)
            InitializerBootcamp(ct: 100, fruit: .apple)
        }
    }
}
