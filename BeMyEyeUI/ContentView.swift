//
//  ContentView.swift
//  BeMyEyeUI
//
//  Created by Emmanuel K. Nketia on 4/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            CommunityView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Community")
                }
            NavigationView{
                VStack{
                    SettingsView()
                }.navigationTitle("settings")
            }
            .tabItem{
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
