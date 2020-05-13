//
//  InformationDetailView.swift
//  MinPaper
//
//  Created by Александр Редин on 05.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct InformationDetailView: View {
    var title: String = "title"
    var imageName: String = "arrow.down.circle"
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.mainColor)
                .padding()
                .accessibility(hidden: true)

                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .accessibility(addTraits: .isHeader)

        }
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
        .padding(.top)
    }
}

struct InformationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InformationDetailView()
    }
}
