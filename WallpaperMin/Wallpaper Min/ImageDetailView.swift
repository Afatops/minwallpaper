//
//  ContentDetailWallper.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 17.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct ImageDetailView: View {
    
    var imageIdd: DataWallper
    
    var body: some View {
        VStack {
            CircleImage(image: imageIdd.image)
//                Image(imageIdd.imageName)
//                    Image(imageIdd.imageName)

//                .resizable()
                .scaledToFill()
                .offset(x: 0, y: 170)
                .frame(width: 380, height: 480)
            
            Spacer()
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(imageIdd: response[1])
    }
}
