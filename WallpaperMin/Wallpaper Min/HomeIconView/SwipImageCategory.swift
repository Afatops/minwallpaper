//
//  SwipImageCategory.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 03.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI
import UIKit

struct SwipImageCategory: View {
    var categoryName: String
    var selectImage = [DataWallper]()
    @State private var isUserSwiping: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(self.selectImage) { image in
                        ImagesOpenSwitch(selectImage: image)
                    }
                    .frame(height: 350)
                }
            }
        }
    }
}


struct SwipImageCategory_Previews: PreviewProvider {
    static var previews: some View {
        SwipImageCategory(categoryName: response[0].category.rawValue, selectImage: Array(response.prefix(9)))
    }
}
