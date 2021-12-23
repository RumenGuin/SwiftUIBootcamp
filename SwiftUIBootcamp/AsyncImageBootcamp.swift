//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by RUMEN GUIN on 23/12/21.
//

import SwiftUI
//asynchronous -> not existing or occurring at the same time.

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        //image: Image
//        AsyncImage(url: url, content: { image in
//            image
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
        
        
        
        /*
         case empty: No image is loaded.
         case success(Image):  An image succesfully loaded.
         case failure(Error):  An image failed to load with an error.
         */
        
        // phase: AsyncImagePhase
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                   .resizable()
                   .scaledToFit()
                   .frame(width: 100, height: 100)
                   .cornerRadius(20)
                
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
                
                
             default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
           
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
