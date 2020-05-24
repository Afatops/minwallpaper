//
//  NewView.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 18.04.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import SwiftUI
import UserNotifications
import UIKit

struct NewView: View {
    
    @State var showingPaySheet = false
    
    var categoryName: [String:[DataWallper]] {
        Dictionary (
            grouping: response,
            by: { $0.category.rawValue })
    }
    
    
    init() {
        let appearance = UINavigationBarAppearance()
        
        UITableView.appearance().backgroundColor = .init(red: 0.22, green: 0.22, blue: 0.22, alpha: 1)
        appearance.backgroundColor = .init(red: 0.22, green: 0.22, blue: 0.22, alpha: 1)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categoryName.keys.sorted(), id: \.self) { key in
                    CategoryContent(categoryName: key, images: self.categoryName[key]!)
                }
                .background(Color(red: 0.22, green: 0.22, blue: 0.22))
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color(red: 0.22, green: 0.22, blue: 0.22))
            }
            .onAppear() {
                let a = response.remove(at: 0)
                response.insert(a, at: 4)
            }
            .navigationBarTitle(Text("Minpaper"))
                
                //            .navigationBarItems(trailing:
                //                Button {
                //                    Image("Minpaper_icon")
                //                        .resizable()
                //                        .foregroundColor(.white)
                //                        .aspectRatio(contentMode: .fit)
                //                        .frame(width: 10, height: 10, alignment: .center)
                //                        .padding(UIScreen.main.bounds.size.width/4+30)
                //                }
                //            )
                
                .navigationBarHidden(false)
                
                
                //Clear Line for List!
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                    
            }
                
            .navigationBarItems(trailing: Button(action: {
                self.showingPaySheet = true
            }) {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
            })
                .sheet(isPresented: $showingPaySheet) {
                    PaySheet(showingPaySheet: self.$showingPaySheet)
            }
        }
        .statusBar(hidden: true)
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
    }
}
