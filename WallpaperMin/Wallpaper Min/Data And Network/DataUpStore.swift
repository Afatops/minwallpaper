//
//  DataUpStore.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 18.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI
import Combine

class DataUpStore: ObservableObject {
     @Published var imagesUpStore: [DataWallper]
       
       init(imagesUpStore: [DataWallper] = []) {
           self.imagesUpStore = imagesUpStore
       }
}
