//
//  DetailImageDownIconOnImage.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 27.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct DetailImageDownIconOnImage: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(Color.gray)
                .frame(width: 380, height: 100)
                .opacity(0.4)
//                .blendMode(.multiply)
            
            HStack(spacing: 17) {
                Spacer()

                    Image("Settings_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Image("messenger")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Image("apple tv")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Image("Podcast_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)
                Spacer()

            }
//                .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
//            .padding(.horizontal)
//            .padding(.horizontal, 5.0)
        }
    }
}

struct DetailImageDownIconOnImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImageDownIconOnImage()
        .previewLayout(.sizeThatFits)
    }
}
