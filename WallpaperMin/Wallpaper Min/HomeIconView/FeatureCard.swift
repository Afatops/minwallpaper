//
//  FeatureCard.swift
//  MinPaper
//
//  Created by Александр Редин on 03.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
    var selectImage: DataWallper
    
    var body: some View {
        ZStack{
        Image(self.selectImage.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width+10, height: UIScreen.main.bounds.height+150, alignment: .center)
        }
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(selectImage: response[1])
        .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
        .previewDisplayName("iPhone 11 Pro Max")
    }
}
