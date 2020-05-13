//
//  ContentView.swift
//  MinPaper
//
//  Created by Александр Редин on 11.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct ContentViews: View {
    @State var index = 0

    var images = ["1-2", "2-3", "3-4", "4-5"]

    var body: some View {
        VStack(spacing: 20) {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(self.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .aspectRatio(4/3, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 15))

            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(self.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .aspectRatio(3/4, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 15))

            Stepper("Index: \(index)", value: $index.animation(.easeInOut), in: 0...images.count-1)
                .font(Font.body.monospacedDigit())
        }
        .padding()
    }
}

struct ContentViews_Previews: PreviewProvider {
    static var previews: some View {
        ContentViews()
    }
}
