//
//  CategoryItem.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 20.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
    var images: DataWallper
    
    var body: some View {
        VStack(alignment: .leading) {
                Image(self.images.imageName)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160.0, height: 265.0, alignment: .center)
                    .cornerRadius(15.0)
                    .shadow(radius: 5)

        }
        .padding(.vertical)
        .padding(.horizontal, 10.0)
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
        
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(images: response[2])
    }
}
