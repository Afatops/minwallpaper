//
//  ImageOriginals.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 29.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ImageOriginals: View {
    var selectImage: DataWallper
    @State var shouldHide = false
    @State private var shouldHides = false
    @State private var processedImage: UIImage?
    
    var body: some View {
        
        VStack {
            VStack(spacing: 10) {
                
                VStack{
                    Spacer()
                    
                    if shouldHide {
                        VStack{
                            DetailImageIconOnImage()
                            
                            Spacer()
                                .edgesIgnoringSafeArea(.all)
                        }
                    }
                    HStack{
                        Image(systemName: shouldHide ? "eye" : "eye.slash")
                            .font(.system(size: 25))
                        
                        Toggle(isOn: $shouldHide.animation()) {
                            Text(" ")
                        }
                        .labelsHidden()
                        .hueRotation(Angle.degrees(90))
                        
                        
                        Button(action: { UIImageWriteToSavedPhotosAlbum(UIImage(named: self.selectImage.imageName)!, self, nil, nil)}) {
                            
                            HStack() {
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
                        }
                        .padding()
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ImageOriginals_Previews: PreviewProvider {
    static var previews: some View {
        ImageOriginals(selectImage: response[0])
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
            .previewDisplayName("iPhone XR")
    }
}
