//
//  DataStore.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 18.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var images: [DataWallper]
    
    init(images: [DataWallper] = []) {
        self.images = images
    }
}
