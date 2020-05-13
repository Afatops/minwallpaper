//
//  PostView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 14.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

/// PostView
struct PostView: View {
    
    /// post
//    let post: Post
    
    /// body
    var body: some View {
        var images: [[Int]] = []
        
//        ZStack(alignment: .leading) {
//            VStack {
                
                
                _ = (1...10).publisher
                    .collect(2)
                    .collect()
                    .sink(receiveValue: { images = $0})
                
                return ForEach(0..<images.count, id: \.self) { array in
                    HStack {
                        ForEach(images[array], id: \.self) { number in
                            Image("\(number)")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                        }
                    }
                }
                
                /// main stack
                
                //                Image(post.image ?? "")
                //                    .resizable()
                //                    .aspectRatio(3/2, contentMode: .fit)
                //                    .cornerRadius(8)
//            }
            
            // name
//            ZStack {
//                Text(post.user.name).font(.title)
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .padding()
//                    .background(Color.black)
//                    .foregroundColor(.white)
//            }
//            .padding(.bottom)
        }
//        .padding(.leading, 15)
//        .padding(.trailing, 15)
        
        
    }
//}




struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
