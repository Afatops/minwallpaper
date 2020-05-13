//
//  InformationContainerView.swift
//  MinPaper
//
//  Created by Александр Редин on 05.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct InformationContainerView: View {
    var body: some View {
        VStack() {
            InformationDetailView(title: "See images", imageName: "eye")
            InformationDetailView(title: "Download", imageName: "arrow.down.circle")
        }
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
        .padding(.horizontal)
    }
}

struct InformationContainerView_Previews: PreviewProvider {
    static var previews: some View {
        InformationContainerView()
    }
}
