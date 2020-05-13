//
//  SwiftUIView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 29.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct ImagesOpenSwitch: View {
    var selectImage: DataWallper
    @State var shouldHide = true
    @State private var blurs: CGFloat = 0.0
    
    var body: some View {
        
        ZStack(alignment: .center) {
            Image(self.selectImage.imageName)
                .renderingMode(.original)
                .resizable()
                .padding()
                .scaledToFill()
                .mask(Rectangle())
                .frame(width: UIScreen.main.bounds.width+50, height: UIScreen.main.bounds.height+140, alignment: .center)
                
//                .blur(radius: (0 + blurs) * 20)
//
//            Slider(value: $blurs)
//                .padding(.all)
//                .frame(width: 300, alignment: .center)
        }
    }
}


struct ImagesOpenSwitch_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        ImagesOpenSwitch(selectImage: response[1])
        .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
        .previewDisplayName("iPhone 11 Pro Max")
        ImagesOpenSwitch(selectImage: response[3])
        .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        .previewDisplayName("iPhone 8")
    }
    }
}
