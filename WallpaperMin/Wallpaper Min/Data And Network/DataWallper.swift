//
//  DataWallper.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 16.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation
import SwiftUI

struct DataWallper: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var Money: String
    
    
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case minimalism = "Minimalism"
        case abstrackt = "Abstrackt"
        case cosmos = "Cosmos"
        case gamesAndMovie = "Games And Movie"
        case stars = "Stars"
    }
}

//    func image(forSize size: Int) -> Image {
//        ImageStore.shared.image(name: imageName, size: size)
//    }

extension DataWallper {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

//let DataList = [
//    DataWallper(id: 0, imageName: "1", category: "Abstrackt", Money: "Free")]
