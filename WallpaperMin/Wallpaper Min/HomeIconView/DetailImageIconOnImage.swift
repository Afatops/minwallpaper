//
//  DetailImageIconOnImage.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 27.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct DetailImageIconOnImage: View {
    var body: some View {
        VStack () {


            HStack(spacing: 25) {
                VStack {
                    Image("Icon-128")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("App Store")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        
                }
                VStack {
                    Image("facetime")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("FaceTime")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("reminders")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Reminders")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack{
                    Image("Mail_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Mail")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
            }
            .padding([.leading, .bottom, .trailing])
            .padding(.horizontal, 5)
        
            
            HStack(spacing: 25) {
                VStack {
                    Image("Phone_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Phone")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("Photos_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Photos")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("Clock_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Clock")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("Maps_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Maps")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
            }
            .padding([.leading, .bottom, .trailing])
            .padding(.horizontal, 5)
            
            
            HStack(spacing: 25) {
                VStack {
                    Image("Settings_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Settings")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("messenger")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Messages")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("apple tv")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("TV")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("Podcast_2x")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65.0, height: 65.0, alignment: .center)

                    Text("Podcasts")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
            }
                
            .padding([.leading, .bottom, .trailing])
            .padding(.horizontal, 5.0)
            
            
        }
        
//            .frame(width: UIScreen.main.bounds.width-20, alignment: .center)
//        .padding(.all)
    }
}

struct DetailImageIconOnImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImageIconOnImage()
        
    }
}
