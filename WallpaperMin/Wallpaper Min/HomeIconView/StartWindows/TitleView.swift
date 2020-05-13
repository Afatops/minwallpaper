//
//  TitleView.swift
//  MinPaper
//
//  Created by Александр Редин on 05.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            Image("Minpaper_icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, alignment: .center)
                .accessibility(hidden: true)

            Text("Welcome to")
                .customTitleText()
            .foregroundColor(.white)

            Text("MinPaper")
                .customTitleText()
                .foregroundColor(.mainColor)
        }
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
