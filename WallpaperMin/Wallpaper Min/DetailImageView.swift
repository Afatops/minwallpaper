//
//  DetailImageView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 18.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct DetailImageView: View {
    var selectImage: DataWallper
    var selectImages = [DataWallper]()
    var categoryName: String

    
    var body: some View {
        ZStack{
            PageView(response.map { img in
                FeatureCard(selectImage: selectImage) })
            
//          ImagesOpenSwitch(selectImage: self.selectImage)
            ImageOriginals(selectImage: self.selectImage)
                
                .padding(.all, 25.0)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-70, alignment: .center)
        }
    }
}

struct DetailImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DetailImageView(selectImage: response[8], categoryName: response[0].category.rawValue)
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
            
            DetailImageView(selectImage: response[2], categoryName: response[0].category.rawValue)
                .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
                .previewDisplayName("iPhone XR")
            
            DetailImageView(selectImage: response[5], categoryName: response[0].category.rawValue)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
        }
        //        .previewLayout(.sizeThatFits)
    }
}


struct ButtonBacgrouund: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [
            .red, .yellow]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
    }
}
