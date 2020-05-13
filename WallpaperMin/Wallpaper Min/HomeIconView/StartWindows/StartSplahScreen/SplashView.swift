//
//  SplashView.swift
//  MinPaper
//
//  Created by Александр Редин on 05.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    
    // 1.
    @State var isActive: Bool = false
//    @State var showingDetail = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                NewView()
            } else {
                // 4.
                Image("3")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width+50, height: UIScreen.main.bounds.height+140, alignment: .center)
//                VStack {
//                    Spacer()
//                    Button(action: {
//                        self.showingDetail.toggle()
//
//                    }) {
//                        Text("Continue")
//                            .customButton()
//                    }
//                    .padding(.horizontal, 50.0)
//                    .sheet(isPresented: $showingDetail) {
//                        NewView()
//                    }
//                }.padding(.vertical, 100.0)
            }
        }
            // 5.
            .onAppear {
                // 6.
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    // 7.
                    withAnimation {
                        self.isActive = true
                    }
                }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
