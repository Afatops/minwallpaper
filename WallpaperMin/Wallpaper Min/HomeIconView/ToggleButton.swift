//
//  ToggleButton.swift
//  MinPaper
//
//  Created by Александр Редин on 11.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct ToggleButton: View {
    var selectImage: DataWallper
    @State var shouldHides = false
    @State var shouldHide = false

    @State private var processedImage: UIImage?
    
    var body: some View {
        VStack{
            Spacer()
            if shouldHides {
                VStack{
                    DetailImageIconOnImage()
                    
                    Spacer()
                        .edgesIgnoringSafeArea(.all)
                }
            }
            HStack{
                Image(systemName: shouldHides ? "eye" : "eye.slash")
                    .font(.system(size: 25))
                
                Toggle(isOn: $shouldHides.animation()) {
                    Text(" ")
                }
                .labelsHidden()
                .hueRotation(Angle.degrees(90))
                
                Button(action: { UIImageWriteToSavedPhotosAlbum(UIImage(named: self.selectImage.imageName)!, self, nil, nil)}) {
                    ZStack {
                        Circle()
                            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.702, opacity: 1.0))
                            .frame(width: 55, height: 55)
                        Image(systemName: "arrow.down.circle.fill")
                            .padding()
                            .frame(width: 50.0, height: 50.0)
                            .imageScale(.large)
                    }
                }
                .padding()
            }
            
        }
        .padding(.horizontal)
    }
}

struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton(selectImage: response[0])
        .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
        .previewDisplayName("iPhone XR")
    }
}
