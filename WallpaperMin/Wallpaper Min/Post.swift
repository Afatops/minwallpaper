//
//  Post.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 14.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation
import SwiftUI

/// Post
struct Post: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// user
    let user: User!
    
    /// post image
    let image: String?
    
    /// Init
    init(user: User, image: String?) {
        self.user = user
        self.image = image
    }
}
