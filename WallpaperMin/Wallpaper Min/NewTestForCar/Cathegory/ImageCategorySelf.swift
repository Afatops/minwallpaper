//
//  ImageCategorySelf.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 28.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct ImageCategorySelf: View {
    var loadImages2: DataWallper

    var body: some View {
        ZStack(alignment: .bottom) {
                Image(loadImages2.imageName)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 250, alignment: .center)
                        .cornerRadius(15)
                        .padding(15)
                        .shadow(radius: 10)
//                        .aspectRatio(contentMode: .fit)
//                        .scaledToFill()
                
                    Text(LocalizedStringKey(loadImages2.category.rawValue))
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .offset(y: -10)
                        .padding()
                        .listRowInsets(EdgeInsets())
        }
        .frame(width: UIScreen.main.bounds.width+50, alignment: .center)

//        .padding(.vertical)
//        .padding(.horizontal, 5.0)
    }
}

struct ImageCategorySelf_Previews: PreviewProvider {
    static var previews: some View {
        ImageCategorySelf(loadImages2: response[5])
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
            .previewDisplayName("iPhone XR")

    }
}
