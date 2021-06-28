//
//  ContentView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 01/06/2021.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var selectedIndex = 0
    
    init() {
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor(red: 0.114, green: 0.157, blue: 0.259, alpha: 1)
        UITabBar.appearance().barTintColor = UIColor(red: 0.114, green: 0.157, blue: 0.259, alpha: 1)
    }
  
    var body: some View {
        TabView(selection: $selectedIndex) {
            DiscoverView()
                .tabItem {
                    selectedIndex == 0 ? Image("home_active") : Image("home_disable")
                    Text("Keşfet")
                }.tag(0)
            MyListView()
                .tabItem {
                    selectedIndex == 1 ? Image("list_active") : Image("list_disable")
                    Text("Liste")
                }.tag(1)
            SearchView()
                .tabItem {
                    selectedIndex == 2 ? Image("search_active") : Image("search_disable")
                    Text("Arama")
                }.tag(2)
            LiveTVView()
                .tabItem {
                    selectedIndex == 3 ? Image("livetv_active") : Image("livetv_disable")
                    Text("Canlı Yayın")
                }.tag(3)
            MoreView()
                .tabItem {
                    selectedIndex == 4 ? Image("more_activated") : Image("more_disabled")
                    Text("Daha Fazla")
                }.tag(4)
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
