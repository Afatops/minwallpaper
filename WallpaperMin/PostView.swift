//
//  PostView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 15.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation
import SwiftUI

/// PostView
struct PostView: View {
    
    /// post
    let post: Post
    
    /// body
    var body: some View {
        
        /// main stack
        VStack(alignment: .leading, spacing: 10) {
            
            VStack(alignment: .leading) {
                
                HStack(spacing: 10) {
                    
                    VStack(alignment: .leading, spacing: 3) {
                        
                        // name
                        Text(post.user.name).font(.headline)
                    }
                }
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            
            Image(post.image ?? "")
                .resizable()
                .aspectRatio(3/2, contentMode: .fit)
        }
        .padding(.top, 5)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
