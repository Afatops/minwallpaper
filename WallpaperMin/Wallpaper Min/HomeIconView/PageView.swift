//
//  PageView.swift
//  MinPaper
//
//  Created by Александр Редин on 03.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
                .padding(.all)
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width+10, height: UIScreen.main.bounds.height+140, alignment: .center)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(response.map { FeatureCard(selectImage: $0) })
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
    }
}
