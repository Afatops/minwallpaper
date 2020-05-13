//
//  WallpaperImageView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 17.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

//import UIKit
//import SwiftUI
//import Combine
//
//struct WallpaperImageView: View {
//    var body: some View {
//        @ObservedObject var imageLoader:DataLoader
//        @State var image:UIImage = UIImage()
//
//        init(withURL url:String) {
//            imageLoader = DataLoader(urlString:url)
//        }
//
//        var body: some View {
//            VStack {
//                Image(uiImage: image)
//                .resizable()
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: 140)
//            }.onReceive(imageLoader.didChange) { data in
//                self.image = UIImage(data: data) ?? UIImage()
//            }
//        }
//    }
//}
//
//struct WallpaperImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        WallpaperImageView()
//    }
//}
//
//
//class DataLoader: ObservableObject {
//    @Published var didChange = PassthroughSubject<Data, Never>()
//    @Published var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
//
//    init(urlString:String) {
//        getDataFromURL(urlString: urlString)
//    }
//
//    func getDataFromURL(urlString:String) {
//        guard let url = URL(string: urlString) else { return }
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data else { return }
//            DispatchQueue.main.async {
//                self.data = data
//            }
//        }.resume()
//    }
//}
//
//struct ImageView: View {
//    @ObservedObject var imageLoader:DataLoader
//    @State var image:UIImage = UIImage()
//
//    init(withURL url:String) {
//        imageLoader = DataLoader(urlString:url)
//    }
//
//    var body: some View {
//        VStack {
//            Image(uiImage: image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width:50, height:50)
//        }.onReceive(imageLoader.didChange) { data in
//            self.image = UIImage(data: data) ?? UIImage()
//        }
//    }
//}
