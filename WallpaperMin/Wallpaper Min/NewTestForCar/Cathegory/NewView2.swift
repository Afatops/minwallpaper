//
//  NewView2.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 21.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct NewView2: View {
    
    @ObservedObject var dataStore: DataStore = DataStore(images: response)
        
    var categoryName: [String:[DataWallper]] {
        Dictionary (
            grouping: response,
            by: { $0.category.self.rawValue })
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach (dataStore.images) { loadImages in
                    NavigationLink(destination: CategoryContent(categoryName: loadImages.category.rawValue)) {
                        ImageCategorySelf(loadImages2: loadImages)
                        
                    }
                }
            }
                .frame(width: UIScreen.main.bounds.width+82, alignment: .center)
                .navigationBarTitle(Text("Wallpaper"))
                
                //Clear Line for List!
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
            }
        }
    }
}

struct NewView2_Previews: PreviewProvider {
    static var previews: some View {
        NewView2()
        .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
        .previewDisplayName("iPhone XR")

    }
}

//List {
//    ForEach(categoryName.keys.sorted(), id: \.self) { key in
//        CategoryContent(categoryName: key, images: self.categoryName[key]!)
//    } .listRowInsets(EdgeInsets())
//}
