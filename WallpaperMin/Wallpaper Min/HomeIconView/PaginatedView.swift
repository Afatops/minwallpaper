////
////  PaginatedView.swift
////  MinPaper
////
////  Created by Александр Редин on 13.05.2020.
////  Copyright © 2020 Aleksandr Redin. All rights reserved.
////
//
//import SwiftUI
//
//struct PaginatedView<Page: View & Identifiable>: View {
//    @State private var totalOffset: CGFloat = 0
//    @State private var pageOffset: CGFloat = 0
//    @State private var currentPageIndex: Int = 0
//    var selectImage: DataWallper
//    
//    var pages: [Page]
//    //  var spacing: CGFloat
//    
//    var body: some View {
//        GeometryReader { proxy in
//            VStack {
//                HStack {
//                    ForEach(self.pages) { (page: Page) in
//                        page
//                            .frame(width: proxy.size.width, height: proxy.size.height)
//                            .shadow(radius: 5)
//                    }
//                }
//                .padding(.bottom, 30)
//                .gesture(self.dragGesture(pageWidth: proxy.size.width))
//                .offset(x: self.totalOffset, y: 0)
//            }
//            .onAppear {
//                self.totalOffset = proxy.size.width / 2 * (CGFloat(self.pages.count) - 1)
//                self.pageOffset = self.totalOffset
//            }
//        }
//    }
//
//    func dragGesture(pageWidth: CGFloat) -> AnyGesture<DragGesture.Value> {
//        let gesture = DragGesture()
//            .onChanged({ value in
//                self.totalOffset += value.translation.width
//            })
//            .onEnded({ value in
//                withAnimation {
//                    if self.pageOffset != pageWidth * round(self.totalOffset / pageWidth) {
//                        let o = self.pageOffset - self.totalOffset
//                        print(self.pageOffset)
//                        switch o {
//                        case (-.infinity)...0:
//                            guard self.currentPageIndex > 0 else {
//                                self.totalOffset = self.pageOffset
//                                return
//                            }
//                            // Decrement Index
//                            self.currentPageIndex -= 1
//                        case 0...(.infinity):
//                            guard self.currentPageIndex < self.pages.count - 1 else {
//                                self.totalOffset = self.pageOffset
//                                return
//                            }
//                            // Increment Index
//                            self.currentPageIndex += 1
//                        default:
//                            break
//                        }
//                    }
//                    self.totalOffset = pageWidth * round(self.totalOffset / pageWidth)
//                    self.pageOffset = self.totalOffset
//                }
//            })
//        return AnyGesture(gesture)
//    }
//    
//}
//
//
///// Page Model
//struct Page: View, Identifiable {
//    var id: Int {
//        index
//    }
//    var index: Int
//    var body: some View {
//        Color.white
//    }
//}
//
///// Int to Float Conversion
//private extension Int {
//    var toFloat: CGFloat {
//        CGFloat(self)
//    }
//}
//
//struct PaginatedView_Previews: PreviewProvider {
//    static var previews: some View {
//        PaginatedView(pages: response.map { FeatureCard(selectImage: $0) })
//    }
//}
