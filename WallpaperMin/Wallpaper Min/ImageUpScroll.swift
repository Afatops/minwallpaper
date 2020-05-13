//
//  ImageUpScroll.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 18.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct ImageUpScroll: View {
    var imageId: DataWallper
    
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                HStack(spacing: -30.0) {
                    GeometryReader { geometry in
                        Image(self.imageId.imageName)
                            .resizable()
                            .frame(width: 180, height: 240)
                            .scaledToFit()
                            .cornerRadius(10)
                            .shadow(radius: 10)

                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 90) / -7
                            ), axis: (x: 0, y: 20, z: 0))
                    }.padding(.leading, 100)
                }
            }
        }
    }
}

struct ImageUpScroll_Previews: PreviewProvider {
    static var previews: some View {
        ImageUpScroll(imageId: response[0])
    }
}
