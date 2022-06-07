//
//  MainView.swift
//  Africa
//
//  Created by Zach Cervi on 6/7/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{Image(systemName: "square.grid.2x2")
                Text("Browse")
                }//: CONTENTVIEW
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locations")
                }
            GalleryView()
                .tabItem( {
                    Image(systemName: "photo")
                    Text("Gallery")
                })
        }//: TABVIEW
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
