//
//  ImagesView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 16.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import UIKit
import SwiftUI
import Combine

struct ImagesView: View {
    var imageIdd: DataWallper
    
    var body: some View {
        
        HStack{
            //            imageIdd.image
            //            .scaledToFit()
            //             .padding(.all)

//            Image(imageIdd.imageName)
//            CircleImage(image: imageIdd.image)
//                .resizable()

               
                imageIdd.image
                .resizable()
                .frame(width: 280, height: 280)
                .scaledToFill()
                .cornerRadius(10)
                .shadow(radius: 15)
                .offset(x: 0, y: 200)
            Spacer()
            
        }
    }
}
        
        


struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImagesView(imageIdd: response[0])
            ImagesView(imageIdd: response[1])
        }.previewLayout(.sizeThatFits)
    }
}


