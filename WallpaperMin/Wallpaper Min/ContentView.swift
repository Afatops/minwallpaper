////
////  ContentView.swift
////  Wallpaper Min
////
////  Created by Александр Редин on 14.04.2020.
////  Copyright © 2020 Aleksandr Redin. All rights reserved.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    @ObservedObject var dataUpStore: DataUpStore = DataUpStore(imagesUpStore: response)
//    @ObservedObject var dataStore: DataStore = DataStore(images: response)    
//    var body: some View {
//        NavigationView {
//            //            VStack{
//            //                ScrollView(.horizontal) {
//            //                    HStack(spacing: 20.0) {
//            //                        GeometryReader { geometry in
//            //                            ForEach (self.dataStore.images) { loadImages in
//            //                                ImageUpScrolls(imageIdd: loadImages)
//            //                            }
//            //                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 90) / -7
//            //                            ), axis: (x: 0, y: 20, z: 0))
//            //
//            //                        }.padding(.leading, 40)
//            //                    }
//            //                }
//                        
//            List {
//                
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack{
//                        ForEach (self.dataUpStore.imagesUpStore) { loadImages in
//                            ImageUpScrolls(imageIdd: loadImages)
//                        }
//                    }
//                }
//                
//                ForEach (dataStore.images) { loadImages in
//                    LoadMainImageLists(loadImages: loadImages)
//                }
//            }
//            .navigationBarTitle(Text("Wallpaper"))
//            .padding([.leading, .bottom], -20.0)
//            .padding([.bottom, .trailing], -20.0)
////            .padding(.all)
//               
//                //Clear Line for List!
//                .onAppear {
//                    UITableView.appearance().separatorStyle = .none
//            }
//            
//        }
//    }
//}
////}
//
//struct ImageUpScrolls: View {
//    var imageIdd: DataWallper
//    
//    var body: some View {
//        
//        NavigationLink(destination: DetailImageView(selectImage: imageIdd)) {
//            
//            HStack {
//                Image(imageIdd.name)
//                    .renderingMode(.original)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 155, height: 240)
//                    .cornerRadius(10)
//                    .padding(.top, 20)
//                    .shadow(radius: 10)
//                    .aspectRatio(contentMode: .fit)
//                
//            }.padding(.leading, 5)
//        }
//    }
//}
//
//struct LoadMainImageLists: View {
//    var loadImages: DataWallper
//    
//    
//    var body: some View {
//        
//        NavigationLink(destination: DetailImageView(selectImage: loadImages)) {
//            ZStack(alignment: .bottom) {
//                    Image(loadImages.imageName)
//                        .renderingMode(.original)
//                        .resizable()
//                        .frame(width: 375, height: 350)
//                        .cornerRadius(10)
//                        .padding(15)
//                        .shadow(radius: 10)
//                        .aspectRatio(contentMode: .fit)
//                        .scaledToFill()
//                                    
//                    Text(loadImages.name)
//                        .font(.title)
//                        .multilineTextAlignment(.center)
//                        .background(Color.black)
//                        .foregroundColor(.white)
//                        .offset(y: -20)
//            }
//        }
//    }
//}
//
//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#endif
//
//
//
//    
////    var imageIdd: DataWallper
////    @State private var showActionContent = false
//
//    
////    var body: some View {
////        NavigationView {
////            VStack {
////                ScrollView(.horizontal) {
////                    HStack {
////                        Button("Popular"){}
////                            .padding(10)
////                            .foregroundColor(.white)
////                            .background(Color.red)
////                            .shadow(radius: 4)
////                            .cornerRadius(6)
////
////                        Button("Featured"){}.padding(10)
////                            .foregroundColor(.white)
////                            .background(Color.red)
////                            .shadow(radius: 4)
////                            .cornerRadius(6)
////                    }.padding(30)
////                }
//                //                        ImagesStoreView(imageId: imageIdd)
//                //                        ImagesView(imageId: imageIdd)
//                
////            List(response) { test in
////                    NavigationLink(destination: ImageDetailView(imageIdd: test)) {
////                        ImageView(image: test.name)
////                    }
////                }.navigationBarTitle(Text("Wallpaper"))
//
//                
////            }
//            
////        }
////        .padding([.leading, .bottom], -20.0)
////        .padding([.bottom, .trailing], 0.0)
////        .padding(.all)
////            //Clear Line for List!
////            .onAppear {
////                UITableView.appearance().separatorStyle = .none
////        }
////
////    }
////
////}
//
//
//
//
//
////#if DEBUG
////struct ContentView_Previews : PreviewProvider {
////    static var previews: some View {
//////        ForEach(["iPhone XR"], id: \.self) { deviceName in
////            ContentView()
//////                .previewDevice(PreviewDevice(rawValue: deviceName))
//////                .previewDisplayName(deviceName)
//////        }
////    }
////}
////#endif
//
//
//
////                    Button(action: {
////                       self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
////                   }) {
////                       if self.userData.landmarks[self.landmarkIndex].isFavorite {
////                           Image(systemName: "star.fill")
////                               .foregroundColor(Color.yellow)
////                       } else {
////                           Image(systemName: "star")
////                               .foregroundColor(Color.gray)
////                       }
////                   }
////                   
//
//
//   
//
//
//// statuses
////                ScrollView(.horizontal, content: {
////                    HStack(spacing: -30.0) {
////                        ForEach(self.imageIdd) { imageId in
////                            GeometryReader { geometry in
////                                ImagesStoreView(imageIdd.imageId)
////                                    .rotation3DEffect(Angle(degrees:
////                                        (Double(geometry.frame(in: .global).minX) - 40) / -7
////                                    ), axis: (x: 0, y: 20, z: 0))
////                            }
////                        }.frame(width: 200, height: 300)
////                    }
////                    .padding(.leading, 40)
////                })
////                    .frame(height: 280)
//
//
//// posts
////                VStack {
//////                List(response) { imageId in
//////                    ImagesStoreView(imageId: imageId)
////                    ImagesView(imageId: imageIdd)
////
//////                    PostView()
