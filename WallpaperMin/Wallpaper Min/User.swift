//
//  User.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 14.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation
import SwiftUI

/// User
struct User: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// user name
    let name: String
    
    /// user profile avatar
    let avatar: String
    
    /// Init
    init(name: String, avatar: String) {
        self.name = name
        self.avatar = avatar
    }
}
