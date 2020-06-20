//
//  MainView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Home")
                    }
                
                ItemView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Item")
                    }
                
                NewsView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("News")
                    }
                
                SettingView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Setting")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
