//
//  CategoryContent.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 20.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct CategoryContent: View {
    var categoryName: String
    var images = [DataWallper]()
    
    
    var body: some View {
        
        VStack(spacing: 7) {
            Text(self.categoryName)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: -5.0) {
                    ForEach(self.images) { image in
                        NavigationLink(destination: DetailImageView(selectImage: image, categoryName: self.categoryName)) {
                            CategoryItem(images: image)
                        }
                        
                    }
                    .frame(height: 290)
                }
                Spacer()
            }
        }
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))

    }
}

//GeometryReader { geometry in
//
//                           .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 90) / -7
//                           ), axis: (x: 0, y: 20, z: 0))
//                   }.padding(.leading, 100)


struct CategoryContent_Previews: PreviewProvider {
    static var previews: some View {
        CategoryContent(categoryName: response[0].category.rawValue, images: Array(response.prefix(9)))
    }
}
