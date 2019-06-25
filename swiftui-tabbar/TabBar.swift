//
//  ContentView.swift
//  swiftui-tabbar
//
//  Created by Andre Martingo on 25.06.19.
//  Copyright © 2019 Andre Martingo. All rights reserved.
//

import Foundation


import SwiftUI

import SwiftUI

struct TabBar : View {
    @State var selectedTab = Tab.image
    
    enum Tab: Int {
        case image, noImage
    }
    
    var body: some View {
        TabbedView(selection: $selectedTab) {
            ContentView()
                .tabItemLabel(
                    VStack {
                        Image("today")
                        Text("Image")
                    }
                )
                .tag(Tab.image)
            ContentView()
                .tabItemLabel(Text("No Image"))
                .tag(Tab.noImage)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct TabBar_Previews : PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
#endif
