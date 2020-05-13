////
////  ImagesStoreView.swift
////  Wallpaper Min
////
////  Created by Александр Редин on 16.04.2020.
////  Copyright © 2020 Aleksandr Redin. All rights reserved.
////
//
//import SwiftUI
//
//struct ImagesStoreView: View {
//    var imageId: DataWallper
//    
//    var body: some View {
//        HStack {
//            ScrollView(.horizontal) {
//                HStack(spacing: -30.0) {
//                    GeometryReader { geometry in
//                        Image(self.imageId.imageName)
//                            .resizable()
//                            .frame(width: 180, height: 240)
//                            .scaledToFit()
//                            .cornerRadius(10)
//                            .shadow(radius: 10)
//                            
//                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 90) / -7
//                            ), axis: (x: 0, y: 20, z: 0))
//                    }.padding(.leading, 100)
//                }
//            }
//        }
//    }
//}
//
//struct ImagesStoreView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImagesStoreView(imageId: response[0])
//    }
//}


//            ScrollView(.horizontal, content: {
//                    HStack(spacing: -30.0) {
//                        ForEach(self.imageIdd) { imageId in
//                            GeometryReader { geometry in
//                                ImagesStoreView(imageIdd.imageId)
//                                    .rotation3DEffect(Angle(degrees:
//                                        (Double(geometry.frame(in: .global).minX) - 40) / -7
//                                    ), axis: (x: 0, y: 20, z: 0))
//                            }
//                        }.frame(width: 200, height: 300)
//                    }
//                    .padding(.leading, 40)
//                })
//                    .frame(height: 280)
