//
//  IntroductionView.swift
//  MinPaper
//
//  Created by Александр Редин on 05.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct IntroductionView: View {
    @State var showingDetail = false
    
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer()
            TitleView()
            InformationContainerView()
            Spacer(minLength: 30)
            
            Button(action: {
                NewView()
            }) {
                Text("Continue")
                    .customButton()
            }
            .padding(.all)
        }
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
