//
//  TestData.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 14.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import Foundation

/// Test Data
struct TestData {
    
    /// users
    static let imageMinimalism = User(name: "Minimalism", avatar: "1")
    static let imageAbstract = User(name: "Abstract", avatar: "1")
    static let imageCosmos = User(name: "Cosmos", avatar: "1")
    static let imageGamesAndMovies = User(name: "Games and movies", avatar: "1")
    
    
    /// statuses
    static func statuses() -> [StatusBar] {
        let status1 = StatusBar(user: imageMinimalism, image: "3")
        let status2 = StatusBar(user: imageAbstract, image: "8")
        let status3 = StatusBar(user: imageCosmos, image: "9")
        let status4 = StatusBar(user: imageGamesAndMovies, image: "10")
        
        return [status1, status2, status3, status4]
    }
}
